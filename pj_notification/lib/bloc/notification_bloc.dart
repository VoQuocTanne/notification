import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../service/notification_service.dart';

part 'notification_event.dart';

part 'notification_state.dart';

part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationService _service;

  NotificationBloc(this._service) : super(const NotificationState.initial()) {
    on<_SendNotification>(_onSendNotification);
    on<_GetDeviceToken>(_onGetDeviceToken);
  }

  Future<void> _onSendNotification(
    _SendNotification event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationState.loading());
    try {
      final success = await _service.sendNotificationToDevice(
        deviceToken: event.token,
        title: event.title,
        body: event.body,
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
