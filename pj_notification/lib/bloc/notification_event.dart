part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.sendNotification({
    required String token,
    required String title,
    required String body,
  }) = _SendNotification;

  const factory NotificationEvent.getDeviceToken() = _GetDeviceToken;
}
