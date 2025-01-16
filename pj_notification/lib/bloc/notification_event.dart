part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.sendCallNotification({
    required String token,
    required String callerName,
    required String phoneNumber,
    required String callId,
  }) = _SendCallNotification;

  const factory NotificationEvent.getDeviceToken() = _GetDeviceToken;

  const factory NotificationEvent.acceptCall({
    required String callId,
  }) = _AcceptCall;

  const factory NotificationEvent.declineCall({
    required String callId,
  }) = _DeclineCall;
}