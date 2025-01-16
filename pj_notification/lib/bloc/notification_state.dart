part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;

  const factory NotificationState.loading() = _Loading;

  const factory NotificationState.success() = _Success;

  const factory NotificationState.failure(String error) = _Failure;

  const factory NotificationState.tokenReceived(String token) = _TokenReceived;

  const factory NotificationState.callAccepted(String callId) = _CallAccepted;

  const factory NotificationState.callDeclined(String callId) = _CallDeclined;
}
