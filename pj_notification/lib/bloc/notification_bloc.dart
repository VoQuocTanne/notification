import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../service/notification_service.dart';

part 'notification_event.dart';

part 'notification_state.dart';

part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationService _service;
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  final tokenController = TextEditingController();

  NotificationBloc(this._service) : super(const NotificationState.initial()) {
    on<_SendNotification>(_onSendNotification);
    on<_GetDeviceToken>(_onGetDeviceToken);
  }

  @override
  Future<void> close() {
    titleController.dispose();
    bodyController.dispose();
    tokenController.dispose();
    return super.close();
  }

  bool validateInputs() {
    return tokenController.text.isNotEmpty &&
        titleController.text.isNotEmpty &&
        bodyController.text.isNotEmpty;
  }

  Future<void> _onSendNotification(
      _SendNotification event,
      Emitter<NotificationState> emit,
      ) async {
    if (!validateInputs()) {
      emit(const NotificationState.failure('Vui lòng nhập đầy đủ thông tin'));
      return;
    }

    emit(const NotificationState.loading());
    try {
      final success = await _service.sendNotificationToDevice(
        deviceToken: tokenController.text.trim(),
        title: titleController.text.trim(),
        body: bodyController.text.trim(),
      );
      emit(success
          ? const NotificationState.success()
          : const NotificationState.failure('Send failed'));
    } catch (e) {
      emit(NotificationState.failure(e.toString()));
    }
  }

  Future<void> _onGetDeviceToken(
    _GetDeviceToken event,
    Emitter<NotificationState> emit,
  ) async {
    final token = await FirebaseMessaging.instance.getToken();
    if (token != null) {
      emit(NotificationState.tokenReceived(token));
    }
  }
}
