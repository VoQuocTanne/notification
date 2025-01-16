// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String callerName, String phoneNumber, String callId)
        sendCallNotification,
    required TResult Function() getDeviceToken,
    required TResult Function(String callId) acceptCall,
    required TResult Function(String callId) declineCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult? Function()? getDeviceToken,
    TResult? Function(String callId)? acceptCall,
    TResult? Function(String callId)? declineCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult Function()? getDeviceToken,
    TResult Function(String callId)? acceptCall,
    TResult Function(String callId)? declineCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendCallNotification value) sendCallNotification,
    required TResult Function(_GetDeviceToken value) getDeviceToken,
    required TResult Function(_AcceptCall value) acceptCall,
    required TResult Function(_DeclineCall value) declineCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendCallNotification value)? sendCallNotification,
    TResult? Function(_GetDeviceToken value)? getDeviceToken,
    TResult? Function(_AcceptCall value)? acceptCall,
    TResult? Function(_DeclineCall value)? declineCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendCallNotification value)? sendCallNotification,
    TResult Function(_GetDeviceToken value)? getDeviceToken,
    TResult Function(_AcceptCall value)? acceptCall,
    TResult Function(_DeclineCall value)? declineCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendCallNotificationImplCopyWith<$Res> {
  factory _$$SendCallNotificationImplCopyWith(_$SendCallNotificationImpl value,
          $Res Function(_$SendCallNotificationImpl) then) =
      __$$SendCallNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String token, String callerName, String phoneNumber, String callId});
}

/// @nodoc
class __$$SendCallNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$SendCallNotificationImpl>
    implements _$$SendCallNotificationImplCopyWith<$Res> {
  __$$SendCallNotificationImplCopyWithImpl(_$SendCallNotificationImpl _value,
      $Res Function(_$SendCallNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? callerName = null,
    Object? phoneNumber = null,
    Object? callId = null,
  }) {
    return _then(_$SendCallNotificationImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      callerName: null == callerName
          ? _value.callerName
          : callerName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCallNotificationImpl implements _SendCallNotification {
  const _$SendCallNotificationImpl(
      {required this.token,
      required this.callerName,
      required this.phoneNumber,
      required this.callId});

  @override
  final String token;
  @override
  final String callerName;
  @override
  final String phoneNumber;
  @override
  final String callId;

  @override
  String toString() {
    return 'NotificationEvent.sendCallNotification(token: $token, callerName: $callerName, phoneNumber: $phoneNumber, callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCallNotificationImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.callerName, callerName) ||
                other.callerName == callerName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, callerName, phoneNumber, callId);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCallNotificationImplCopyWith<_$SendCallNotificationImpl>
      get copyWith =>
          __$$SendCallNotificationImplCopyWithImpl<_$SendCallNotificationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String callerName, String phoneNumber, String callId)
        sendCallNotification,
    required TResult Function() getDeviceToken,
    required TResult Function(String callId) acceptCall,
    required TResult Function(String callId) declineCall,
  }) {
    return sendCallNotification(token, callerName, phoneNumber, callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult? Function()? getDeviceToken,
    TResult? Function(String callId)? acceptCall,
    TResult? Function(String callId)? declineCall,
  }) {
    return sendCallNotification?.call(token, callerName, phoneNumber, callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult Function()? getDeviceToken,
    TResult Function(String callId)? acceptCall,
    TResult Function(String callId)? declineCall,
    required TResult orElse(),
  }) {
    if (sendCallNotification != null) {
      return sendCallNotification(token, callerName, phoneNumber, callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendCallNotification value) sendCallNotification,
    required TResult Function(_GetDeviceToken value) getDeviceToken,
    required TResult Function(_AcceptCall value) acceptCall,
    required TResult Function(_DeclineCall value) declineCall,
  }) {
    return sendCallNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendCallNotification value)? sendCallNotification,
    TResult? Function(_GetDeviceToken value)? getDeviceToken,
    TResult? Function(_AcceptCall value)? acceptCall,
    TResult? Function(_DeclineCall value)? declineCall,
  }) {
    return sendCallNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendCallNotification value)? sendCallNotification,
    TResult Function(_GetDeviceToken value)? getDeviceToken,
    TResult Function(_AcceptCall value)? acceptCall,
    TResult Function(_DeclineCall value)? declineCall,
    required TResult orElse(),
  }) {
    if (sendCallNotification != null) {
      return sendCallNotification(this);
    }
    return orElse();
  }
}

abstract class _SendCallNotification implements NotificationEvent {
  const factory _SendCallNotification(
      {required final String token,
      required final String callerName,
      required final String phoneNumber,
      required final String callId}) = _$SendCallNotificationImpl;

  String get token;
  String get callerName;
  String get phoneNumber;
  String get callId;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendCallNotificationImplCopyWith<_$SendCallNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDeviceTokenImplCopyWith<$Res> {
  factory _$$GetDeviceTokenImplCopyWith(_$GetDeviceTokenImpl value,
          $Res Function(_$GetDeviceTokenImpl) then) =
      __$$GetDeviceTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDeviceTokenImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$GetDeviceTokenImpl>
    implements _$$GetDeviceTokenImplCopyWith<$Res> {
  __$$GetDeviceTokenImplCopyWithImpl(
      _$GetDeviceTokenImpl _value, $Res Function(_$GetDeviceTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDeviceTokenImpl implements _GetDeviceToken {
  const _$GetDeviceTokenImpl();

  @override
  String toString() {
    return 'NotificationEvent.getDeviceToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDeviceTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String callerName, String phoneNumber, String callId)
        sendCallNotification,
    required TResult Function() getDeviceToken,
    required TResult Function(String callId) acceptCall,
    required TResult Function(String callId) declineCall,
  }) {
    return getDeviceToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult? Function()? getDeviceToken,
    TResult? Function(String callId)? acceptCall,
    TResult? Function(String callId)? declineCall,
  }) {
    return getDeviceToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult Function()? getDeviceToken,
    TResult Function(String callId)? acceptCall,
    TResult Function(String callId)? declineCall,
    required TResult orElse(),
  }) {
    if (getDeviceToken != null) {
      return getDeviceToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendCallNotification value) sendCallNotification,
    required TResult Function(_GetDeviceToken value) getDeviceToken,
    required TResult Function(_AcceptCall value) acceptCall,
    required TResult Function(_DeclineCall value) declineCall,
  }) {
    return getDeviceToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendCallNotification value)? sendCallNotification,
    TResult? Function(_GetDeviceToken value)? getDeviceToken,
    TResult? Function(_AcceptCall value)? acceptCall,
    TResult? Function(_DeclineCall value)? declineCall,
  }) {
    return getDeviceToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendCallNotification value)? sendCallNotification,
    TResult Function(_GetDeviceToken value)? getDeviceToken,
    TResult Function(_AcceptCall value)? acceptCall,
    TResult Function(_DeclineCall value)? declineCall,
    required TResult orElse(),
  }) {
    if (getDeviceToken != null) {
      return getDeviceToken(this);
    }
    return orElse();
  }
}

abstract class _GetDeviceToken implements NotificationEvent {
  const factory _GetDeviceToken() = _$GetDeviceTokenImpl;
}

/// @nodoc
abstract class _$$AcceptCallImplCopyWith<$Res> {
  factory _$$AcceptCallImplCopyWith(
          _$AcceptCallImpl value, $Res Function(_$AcceptCallImpl) then) =
      __$$AcceptCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId});
}

/// @nodoc
class __$$AcceptCallImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$AcceptCallImpl>
    implements _$$AcceptCallImplCopyWith<$Res> {
  __$$AcceptCallImplCopyWithImpl(
      _$AcceptCallImpl _value, $Res Function(_$AcceptCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
  }) {
    return _then(_$AcceptCallImpl(
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptCallImpl implements _AcceptCall {
  const _$AcceptCallImpl({required this.callId});

  @override
  final String callId;

  @override
  String toString() {
    return 'NotificationEvent.acceptCall(callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptCallImpl &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptCallImplCopyWith<_$AcceptCallImpl> get copyWith =>
      __$$AcceptCallImplCopyWithImpl<_$AcceptCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String callerName, String phoneNumber, String callId)
        sendCallNotification,
    required TResult Function() getDeviceToken,
    required TResult Function(String callId) acceptCall,
    required TResult Function(String callId) declineCall,
  }) {
    return acceptCall(callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult? Function()? getDeviceToken,
    TResult? Function(String callId)? acceptCall,
    TResult? Function(String callId)? declineCall,
  }) {
    return acceptCall?.call(callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult Function()? getDeviceToken,
    TResult Function(String callId)? acceptCall,
    TResult Function(String callId)? declineCall,
    required TResult orElse(),
  }) {
    if (acceptCall != null) {
      return acceptCall(callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendCallNotification value) sendCallNotification,
    required TResult Function(_GetDeviceToken value) getDeviceToken,
    required TResult Function(_AcceptCall value) acceptCall,
    required TResult Function(_DeclineCall value) declineCall,
  }) {
    return acceptCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendCallNotification value)? sendCallNotification,
    TResult? Function(_GetDeviceToken value)? getDeviceToken,
    TResult? Function(_AcceptCall value)? acceptCall,
    TResult? Function(_DeclineCall value)? declineCall,
  }) {
    return acceptCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendCallNotification value)? sendCallNotification,
    TResult Function(_GetDeviceToken value)? getDeviceToken,
    TResult Function(_AcceptCall value)? acceptCall,
    TResult Function(_DeclineCall value)? declineCall,
    required TResult orElse(),
  }) {
    if (acceptCall != null) {
      return acceptCall(this);
    }
    return orElse();
  }
}

abstract class _AcceptCall implements NotificationEvent {
  const factory _AcceptCall({required final String callId}) = _$AcceptCallImpl;

  String get callId;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptCallImplCopyWith<_$AcceptCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeclineCallImplCopyWith<$Res> {
  factory _$$DeclineCallImplCopyWith(
          _$DeclineCallImpl value, $Res Function(_$DeclineCallImpl) then) =
      __$$DeclineCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId});
}

/// @nodoc
class __$$DeclineCallImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$DeclineCallImpl>
    implements _$$DeclineCallImplCopyWith<$Res> {
  __$$DeclineCallImplCopyWithImpl(
      _$DeclineCallImpl _value, $Res Function(_$DeclineCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
  }) {
    return _then(_$DeclineCallImpl(
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeclineCallImpl implements _DeclineCall {
  const _$DeclineCallImpl({required this.callId});

  @override
  final String callId;

  @override
  String toString() {
    return 'NotificationEvent.declineCall(callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeclineCallImpl &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeclineCallImplCopyWith<_$DeclineCallImpl> get copyWith =>
      __$$DeclineCallImplCopyWithImpl<_$DeclineCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, String callerName, String phoneNumber, String callId)
        sendCallNotification,
    required TResult Function() getDeviceToken,
    required TResult Function(String callId) acceptCall,
    required TResult Function(String callId) declineCall,
  }) {
    return declineCall(callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult? Function()? getDeviceToken,
    TResult? Function(String callId)? acceptCall,
    TResult? Function(String callId)? declineCall,
  }) {
    return declineCall?.call(callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, String callerName, String phoneNumber, String callId)?
        sendCallNotification,
    TResult Function()? getDeviceToken,
    TResult Function(String callId)? acceptCall,
    TResult Function(String callId)? declineCall,
    required TResult orElse(),
  }) {
    if (declineCall != null) {
      return declineCall(callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendCallNotification value) sendCallNotification,
    required TResult Function(_GetDeviceToken value) getDeviceToken,
    required TResult Function(_AcceptCall value) acceptCall,
    required TResult Function(_DeclineCall value) declineCall,
  }) {
    return declineCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendCallNotification value)? sendCallNotification,
    TResult? Function(_GetDeviceToken value)? getDeviceToken,
    TResult? Function(_AcceptCall value)? acceptCall,
    TResult? Function(_DeclineCall value)? declineCall,
  }) {
    return declineCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendCallNotification value)? sendCallNotification,
    TResult Function(_GetDeviceToken value)? getDeviceToken,
    TResult Function(_AcceptCall value)? acceptCall,
    TResult Function(_DeclineCall value)? declineCall,
    required TResult orElse(),
  }) {
    if (declineCall != null) {
      return declineCall(this);
    }
    return orElse();
  }
}

abstract class _DeclineCall implements NotificationEvent {
  const factory _DeclineCall({required final String callId}) =
      _$DeclineCallImpl;

  String get callId;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeclineCallImplCopyWith<_$DeclineCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NotificationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotificationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'NotificationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NotificationState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'NotificationState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NotificationState {
  const factory _Failure(final String error) = _$FailureImpl;

  String get error;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenReceivedImplCopyWith<$Res> {
  factory _$$TokenReceivedImplCopyWith(
          _$TokenReceivedImpl value, $Res Function(_$TokenReceivedImpl) then) =
      __$$TokenReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TokenReceivedImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$TokenReceivedImpl>
    implements _$$TokenReceivedImplCopyWith<$Res> {
  __$$TokenReceivedImplCopyWithImpl(
      _$TokenReceivedImpl _value, $Res Function(_$TokenReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenReceivedImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenReceivedImpl implements _TokenReceived {
  const _$TokenReceivedImpl(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'NotificationState.tokenReceived(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenReceivedImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenReceivedImplCopyWith<_$TokenReceivedImpl> get copyWith =>
      __$$TokenReceivedImplCopyWithImpl<_$TokenReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) {
    return tokenReceived(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) {
    return tokenReceived?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) {
    return tokenReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) {
    return tokenReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(this);
    }
    return orElse();
  }
}

abstract class _TokenReceived implements NotificationState {
  const factory _TokenReceived(final String token) = _$TokenReceivedImpl;

  String get token;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenReceivedImplCopyWith<_$TokenReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CallAcceptedImplCopyWith<$Res> {
  factory _$$CallAcceptedImplCopyWith(
          _$CallAcceptedImpl value, $Res Function(_$CallAcceptedImpl) then) =
      __$$CallAcceptedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId});
}

/// @nodoc
class __$$CallAcceptedImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$CallAcceptedImpl>
    implements _$$CallAcceptedImplCopyWith<$Res> {
  __$$CallAcceptedImplCopyWithImpl(
      _$CallAcceptedImpl _value, $Res Function(_$CallAcceptedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
  }) {
    return _then(_$CallAcceptedImpl(
      null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CallAcceptedImpl implements _CallAccepted {
  const _$CallAcceptedImpl(this.callId);

  @override
  final String callId;

  @override
  String toString() {
    return 'NotificationState.callAccepted(callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallAcceptedImpl &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallAcceptedImplCopyWith<_$CallAcceptedImpl> get copyWith =>
      __$$CallAcceptedImplCopyWithImpl<_$CallAcceptedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) {
    return callAccepted(callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) {
    return callAccepted?.call(callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) {
    if (callAccepted != null) {
      return callAccepted(callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) {
    return callAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) {
    return callAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) {
    if (callAccepted != null) {
      return callAccepted(this);
    }
    return orElse();
  }
}

abstract class _CallAccepted implements NotificationState {
  const factory _CallAccepted(final String callId) = _$CallAcceptedImpl;

  String get callId;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallAcceptedImplCopyWith<_$CallAcceptedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CallDeclinedImplCopyWith<$Res> {
  factory _$$CallDeclinedImplCopyWith(
          _$CallDeclinedImpl value, $Res Function(_$CallDeclinedImpl) then) =
      __$$CallDeclinedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String callId});
}

/// @nodoc
class __$$CallDeclinedImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$CallDeclinedImpl>
    implements _$$CallDeclinedImplCopyWith<$Res> {
  __$$CallDeclinedImplCopyWithImpl(
      _$CallDeclinedImpl _value, $Res Function(_$CallDeclinedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
  }) {
    return _then(_$CallDeclinedImpl(
      null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CallDeclinedImpl implements _CallDeclined {
  const _$CallDeclinedImpl(this.callId);

  @override
  final String callId;

  @override
  String toString() {
    return 'NotificationState.callDeclined(callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallDeclinedImpl &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallDeclinedImplCopyWith<_$CallDeclinedImpl> get copyWith =>
      __$$CallDeclinedImplCopyWithImpl<_$CallDeclinedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String callId) callAccepted,
    required TResult Function(String callId) callDeclined,
  }) {
    return callDeclined(callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String callId)? callAccepted,
    TResult? Function(String callId)? callDeclined,
  }) {
    return callDeclined?.call(callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(String token)? tokenReceived,
    TResult Function(String callId)? callAccepted,
    TResult Function(String callId)? callDeclined,
    required TResult orElse(),
  }) {
    if (callDeclined != null) {
      return callDeclined(callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_TokenReceived value) tokenReceived,
    required TResult Function(_CallAccepted value) callAccepted,
    required TResult Function(_CallDeclined value) callDeclined,
  }) {
    return callDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_TokenReceived value)? tokenReceived,
    TResult? Function(_CallAccepted value)? callAccepted,
    TResult? Function(_CallDeclined value)? callDeclined,
  }) {
    return callDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_TokenReceived value)? tokenReceived,
    TResult Function(_CallAccepted value)? callAccepted,
    TResult Function(_CallDeclined value)? callDeclined,
    required TResult orElse(),
  }) {
    if (callDeclined != null) {
      return callDeclined(this);
    }
    return orElse();
  }
}

abstract class _CallDeclined implements NotificationState {
  const factory _CallDeclined(final String callId) = _$CallDeclinedImpl;

  String get callId;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallDeclinedImplCopyWith<_$CallDeclinedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
