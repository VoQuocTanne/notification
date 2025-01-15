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
            success: () => _showSnackBar(context, 'Gửi thông báo thành công'),
            failure: (error) => _showSnackBar(context, 'Lỗi: $error'),
            orElse: () => null,
          );
        },
        builder: (context, state) {
          final bloc = context.read<NotificationBloc>();
          return Scaffold(
            appBar: AppBar(title: const Text('Gửi thông báo')),
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
                    controller: bloc.titleController,
                    decoration: const InputDecoration(
                      labelText: 'Tiêu đề',
                      hintText: 'Nhập tiêu đề thông báo',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: bloc.bodyController,
                    decoration: const InputDecoration(
                      labelText: 'Nội dung',
                      hintText: 'Nhập nội dung thông báo',
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 24),
                  state.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () => ElevatedButton(
                      onPressed: () {
                        final bloc = context.read<NotificationBloc>();
                        bloc.add(NotificationEvent.sendNotification(
                          token: bloc.tokenController.text.trim(),
                          title: bloc.titleController.text.trim(),
                          body: bloc.bodyController.text.trim(),
                        ));
                      },
                      child: const Text('Gửi thông báo'),
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
