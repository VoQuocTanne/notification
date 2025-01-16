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
  final callerNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final tokenController = TextEditingController();

  NotificationBloc(this._service) : super(const NotificationState.initial()) {
    on<_SendCallNotification>(_onSendCallNotification);
    on<_GetDeviceToken>(_onGetDeviceToken);
    on<_AcceptCall>(_onAcceptCall);
    on<_DeclineCall>(_onDeclineCall);
  }

  @override
  Future<void> close() {
    callerNameController.dispose();
    phoneNumberController.dispose();
    tokenController.dispose();
    return super.close();
  }

  bool validateCallInputs() {
    return tokenController.text.isNotEmpty &&
        callerNameController.text.isNotEmpty &&
        phoneNumberController.text.isNotEmpty;
  }

  Future<void> _onSendCallNotification(
    _SendCallNotification event,
    Emitter<NotificationState> emit,
  ) async {
    if (!validateCallInputs()) {
      emit(const NotificationState.failure('Vui lòng nhập đầy đủ thông tin'));
      return;
    }

    emit(const NotificationState.loading());
    try {
      final success = await _service.sendNotificationToDevice(
        deviceToken: event.token,
        title: event.callerName,
        body: event.phoneNumber,
        callId: event.callId,
      );
      emit(success
          ? const NotificationState.success()
          : const NotificationState.failure('Gửi thông báo thất bại'));
    } catch (e) {
      emit(NotificationState.failure(e.toString()));
    }
  }

  Future<void> _onAcceptCall(
    _AcceptCall event,
    Emitter<NotificationState> emit,
  ) async {
    emit(NotificationState.callAccepted(event.callId));
  }

  Future<void> _onDeclineCall(
    _DeclineCall event,
    Emitter<NotificationState> emit,
  ) async {
    emit(NotificationState.callDeclined(event.callId));
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
