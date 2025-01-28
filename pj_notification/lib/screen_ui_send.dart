import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/notification_bloc.dart';
import 'get_it.dart';

class NotificationSenderScreen extends StatelessWidget {
  const NotificationSenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationBloc>(),
      child: BlocConsumer<NotificationBloc, NotificationState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Gửi thông báo thành công'),
                  duration: Duration(seconds: 3),
                ),
              );
            },
            failure: (error) => _showSnackBar(context, 'Lỗi: $error'),
            orElse: () => null,
          );
        },
        builder: (context, state) {
          final bloc = context.read<NotificationBloc>();
          return Scaffold(
            appBar: AppBar(title: const Text('Gửi thông báo cuộc gọi')),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/device-token'),
                    child: const Text('Xem Token Thiết Bị'),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: bloc.tokenController,
                    decoration: const InputDecoration(
                      labelText: 'Device Token',
                      hintText: 'Nhập token của thiết bị nhận',
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: bloc.callerNameController,
                    decoration: const InputDecoration(
                      labelText: 'Tên người gọi',
                      hintText: 'Nhập tên người gọi',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: bloc.phoneNumberController,
                    decoration: const InputDecoration(
                      labelText: 'Số điện thoại',
                      hintText: 'Nhập số điện thoại',
                      prefixIcon: Icon(Icons.phone),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 24),
                  state.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () => ElevatedButton.icon(
                      onPressed: () {
                        final callId =
                            DateTime.now().millisecondsSinceEpoch.toString();
                        bloc.add(NotificationEvent.sendCallNotification(
                          token: bloc.tokenController.text.trim(),
                          callerName: bloc.callerNameController.text.trim(),
                          phoneNumber: bloc.phoneNumberController.text.trim(),
                          callId: callId,
                        ));
                      },
                      icon: const Icon(Icons.call),
                      label: const Text('Gửi thông báo cuộc gọi'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
