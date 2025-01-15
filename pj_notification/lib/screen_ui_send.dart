import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/notification_bloc.dart';
import 'get_it.dart';

class NotificationSenderScreen extends StatelessWidget {
  NotificationSenderScreen({super.key});

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _tokenController = TextEditingController();

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
          return Scaffold(
            appBar: AppBar(
              title: const Text('Gửi thông báo'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/device-token'),
                    child: const Text('Xem Token Thiết Bị'),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _tokenController,
                    decoration: const InputDecoration(
                      labelText: 'Device Token',
                      hintText: 'Nhập token của thiết bị nhận',
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'Tiêu đề',
                      hintText: 'Nhập tiêu đề thông báo',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _bodyController,
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
                      onPressed: () => _sendNotification(context),
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

  void _sendNotification(BuildContext context) {
    if (_validateInputs()) {
      context.read<NotificationBloc>().add(
        NotificationEvent.sendNotification(
          token: _tokenController.text.trim(),
          title: _titleController.text.trim(),
          body: _bodyController.text.trim(),
        ),
      );
    } else {
      _showSnackBar(context, 'Vui lòng nhập đầy đủ thông tin');
    }
  }

  bool _validateInputs() {
    return _tokenController.text.isNotEmpty &&
        _titleController.text.isNotEmpty &&
        _bodyController.text.isNotEmpty;
  }
}