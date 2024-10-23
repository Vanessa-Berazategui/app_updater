// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResultSuccessImplCopyWith<T, $Res> {
  factory _$$ResultSuccessImplCopyWith(_$ResultSuccessImpl<T> value,
          $Res Function(_$ResultSuccessImpl<T>) then) =
      __$$ResultSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResultSuccessImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultSuccessImpl<T>>
    implements _$$ResultSuccessImplCopyWith<T, $Res> {
  __$$ResultSuccessImplCopyWithImpl(_$ResultSuccessImpl<T> _value,
      $Res Function(_$ResultSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultSuccessImpl<T> implements _ResultSuccess<T> {
  _$ResultSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      __$$ResultSuccessImplCopyWithImpl<T, _$ResultSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> implements Result<T> {
  factory _ResultSuccess(final T data) = _$ResultSuccessImpl<T>;

  T get data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultFailureImplCopyWith<T, $Res> {
  factory _$$ResultFailureImplCopyWith(_$ResultFailureImpl<T> value,
          $Res Function(_$ResultFailureImpl<T>) then) =
      __$$ResultFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ResultFailureImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultFailureImpl<T>>
    implements _$$ResultFailureImplCopyWith<T, $Res> {
  __$$ResultFailureImplCopyWithImpl(_$ResultFailureImpl<T> _value,
      $Res Function(_$ResultFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ResultFailureImpl<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ResultFailureImpl<T> implements _ResultFailure<T> {
  _$ResultFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'Result<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultFailureImpl<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultFailureImplCopyWith<T, _$ResultFailureImpl<T>> get copyWith =>
      __$$ResultFailureImplCopyWithImpl<T, _$ResultFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResultFailure<T> implements Result<T> {
  factory _ResultFailure(final Failure failure) = _$ResultFailureImpl<T>;

  Failure get failure;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultFailureImplCopyWith<T, _$ResultFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Failure _$FailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'server':
      return _FailureServer.fromJson(json);
    case 'unauthorized':
      return _FailureUnauthorized.fromJson(json);
    case 'unexpected':
      return _FailureUnexpected.fromJson(json);
    case 'connectTimeout':
      return _FailureConnectTimeOut.fromJson(json);
    case 'sendTimeout':
      return _FailureSendTimeOut.fromJson(json);
    case 'receiveTimeout':
      return _FailureReceiveTimeout.fromJson(json);
    case 'noConnection':
      return _FailureNoConnection.fromJson(json);
    case 'cache':
      return _FailureCache.fromJson(json);
    case 'ota':
      return _FailureOTA.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Failure',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Failure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FailureServerImplCopyWith<$Res> {
  factory _$$FailureServerImplCopyWith(
          _$FailureServerImpl value, $Res Function(_$FailureServerImpl) then) =
      __$$FailureServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int? code});
}

/// @nodoc
class __$$FailureServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureServerImpl>
    implements _$$FailureServerImplCopyWith<$Res> {
  __$$FailureServerImplCopyWithImpl(
      _$FailureServerImpl _value, $Res Function(_$FailureServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_$FailureServerImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureServerImpl implements _FailureServer {
  const _$FailureServerImpl(
      {required this.message, this.code, final String? $type})
      : $type = $type ?? 'server';

  factory _$FailureServerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureServerImplFromJson(json);

  @override
  final String message;
  @override
  final int? code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.server(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServerImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      __$$FailureServerImplCopyWithImpl<_$FailureServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return server(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return server?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureServerImplToJson(
      this,
    );
  }
}

abstract class _FailureServer implements Failure {
  const factory _FailureServer(
      {required final String message, final int? code}) = _$FailureServerImpl;

  factory _FailureServer.fromJson(Map<String, dynamic> json) =
      _$FailureServerImpl.fromJson;

  String get message;
  int? get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUnauthorizedImplCopyWith<$Res> {
  factory _$$FailureUnauthorizedImplCopyWith(_$FailureUnauthorizedImpl value,
          $Res Function(_$FailureUnauthorizedImpl) then) =
      __$$FailureUnauthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureUnauthorizedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnauthorizedImpl>
    implements _$$FailureUnauthorizedImplCopyWith<$Res> {
  __$$FailureUnauthorizedImplCopyWithImpl(_$FailureUnauthorizedImpl _value,
      $Res Function(_$FailureUnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureUnauthorizedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureUnauthorizedImpl implements _FailureUnauthorized {
  const _$FailureUnauthorizedImpl(this.message, {final String? $type})
      : $type = $type ?? 'unauthorized';

  factory _$FailureUnauthorizedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureUnauthorizedImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnauthorizedImplCopyWith<_$FailureUnauthorizedImpl> get copyWith =>
      __$$FailureUnauthorizedImplCopyWithImpl<_$FailureUnauthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureUnauthorizedImplToJson(
      this,
    );
  }
}

abstract class _FailureUnauthorized implements Failure {
  const factory _FailureUnauthorized(final String message) =
      _$FailureUnauthorizedImpl;

  factory _FailureUnauthorized.fromJson(Map<String, dynamic> json) =
      _$FailureUnauthorizedImpl.fromJson;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureUnauthorizedImplCopyWith<_$FailureUnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUnexpectedImplCopyWith<$Res> {
  factory _$$FailureUnexpectedImplCopyWith(_$FailureUnexpectedImpl value,
          $Res Function(_$FailureUnexpectedImpl) then) =
      __$$FailureUnexpectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$FailureUnexpectedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnexpectedImpl>
    implements _$$FailureUnexpectedImplCopyWith<$Res> {
  __$$FailureUnexpectedImplCopyWithImpl(_$FailureUnexpectedImpl _value,
      $Res Function(_$FailureUnexpectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$FailureUnexpectedImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureUnexpectedImpl implements _FailureUnexpected {
  const _$FailureUnexpectedImpl(this.e, {final String? $type})
      : $type = $type ?? 'unexpected';

  factory _$FailureUnexpectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureUnexpectedImplFromJson(json);

  @override
  final Object e;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.unexpected(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnexpectedImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnexpectedImplCopyWith<_$FailureUnexpectedImpl> get copyWith =>
      __$$FailureUnexpectedImplCopyWithImpl<_$FailureUnexpectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return unexpected(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return unexpected?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureUnexpectedImplToJson(
      this,
    );
  }
}

abstract class _FailureUnexpected implements Failure {
  const factory _FailureUnexpected(final Object e) = _$FailureUnexpectedImpl;

  factory _FailureUnexpected.fromJson(Map<String, dynamic> json) =
      _$FailureUnexpectedImpl.fromJson;

  Object get e;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureUnexpectedImplCopyWith<_$FailureUnexpectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureConnectTimeOutImplCopyWith<$Res> {
  factory _$$FailureConnectTimeOutImplCopyWith(
          _$FailureConnectTimeOutImpl value,
          $Res Function(_$FailureConnectTimeOutImpl) then) =
      __$$FailureConnectTimeOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureConnectTimeOutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureConnectTimeOutImpl>
    implements _$$FailureConnectTimeOutImplCopyWith<$Res> {
  __$$FailureConnectTimeOutImplCopyWithImpl(_$FailureConnectTimeOutImpl _value,
      $Res Function(_$FailureConnectTimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FailureConnectTimeOutImpl implements _FailureConnectTimeOut {
  const _$FailureConnectTimeOutImpl({final String? $type})
      : $type = $type ?? 'connectTimeout';

  factory _$FailureConnectTimeOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureConnectTimeOutImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.connectTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureConnectTimeOutImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return connectTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return connectTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return connectTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return connectTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureConnectTimeOutImplToJson(
      this,
    );
  }
}

abstract class _FailureConnectTimeOut implements Failure {
  const factory _FailureConnectTimeOut() = _$FailureConnectTimeOutImpl;

  factory _FailureConnectTimeOut.fromJson(Map<String, dynamic> json) =
      _$FailureConnectTimeOutImpl.fromJson;
}

/// @nodoc
abstract class _$$FailureSendTimeOutImplCopyWith<$Res> {
  factory _$$FailureSendTimeOutImplCopyWith(_$FailureSendTimeOutImpl value,
          $Res Function(_$FailureSendTimeOutImpl) then) =
      __$$FailureSendTimeOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureSendTimeOutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureSendTimeOutImpl>
    implements _$$FailureSendTimeOutImplCopyWith<$Res> {
  __$$FailureSendTimeOutImplCopyWithImpl(_$FailureSendTimeOutImpl _value,
      $Res Function(_$FailureSendTimeOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FailureSendTimeOutImpl implements _FailureSendTimeOut {
  const _$FailureSendTimeOutImpl({final String? $type})
      : $type = $type ?? 'sendTimeout';

  factory _$FailureSendTimeOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureSendTimeOutImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.sendTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureSendTimeOutImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureSendTimeOutImplToJson(
      this,
    );
  }
}

abstract class _FailureSendTimeOut implements Failure {
  const factory _FailureSendTimeOut() = _$FailureSendTimeOutImpl;

  factory _FailureSendTimeOut.fromJson(Map<String, dynamic> json) =
      _$FailureSendTimeOutImpl.fromJson;
}

/// @nodoc
abstract class _$$FailureReceiveTimeoutImplCopyWith<$Res> {
  factory _$$FailureReceiveTimeoutImplCopyWith(
          _$FailureReceiveTimeoutImpl value,
          $Res Function(_$FailureReceiveTimeoutImpl) then) =
      __$$FailureReceiveTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureReceiveTimeoutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureReceiveTimeoutImpl>
    implements _$$FailureReceiveTimeoutImplCopyWith<$Res> {
  __$$FailureReceiveTimeoutImplCopyWithImpl(_$FailureReceiveTimeoutImpl _value,
      $Res Function(_$FailureReceiveTimeoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FailureReceiveTimeoutImpl implements _FailureReceiveTimeout {
  const _$FailureReceiveTimeoutImpl({final String? $type})
      : $type = $type ?? 'receiveTimeout';

  factory _$FailureReceiveTimeoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureReceiveTimeoutImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.receiveTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureReceiveTimeoutImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return receiveTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return receiveTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureReceiveTimeoutImplToJson(
      this,
    );
  }
}

abstract class _FailureReceiveTimeout implements Failure {
  const factory _FailureReceiveTimeout() = _$FailureReceiveTimeoutImpl;

  factory _FailureReceiveTimeout.fromJson(Map<String, dynamic> json) =
      _$FailureReceiveTimeoutImpl.fromJson;
}

/// @nodoc
abstract class _$$FailureNoConnectionImplCopyWith<$Res> {
  factory _$$FailureNoConnectionImplCopyWith(_$FailureNoConnectionImpl value,
          $Res Function(_$FailureNoConnectionImpl) then) =
      __$$FailureNoConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureNoConnectionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureNoConnectionImpl>
    implements _$$FailureNoConnectionImplCopyWith<$Res> {
  __$$FailureNoConnectionImplCopyWithImpl(_$FailureNoConnectionImpl _value,
      $Res Function(_$FailureNoConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FailureNoConnectionImpl implements _FailureNoConnection {
  const _$FailureNoConnectionImpl({final String? $type})
      : $type = $type ?? 'noConnection';

  factory _$FailureNoConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureNoConnectionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.noConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureNoConnectionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureNoConnectionImplToJson(
      this,
    );
  }
}

abstract class _FailureNoConnection implements Failure {
  const factory _FailureNoConnection() = _$FailureNoConnectionImpl;

  factory _FailureNoConnection.fromJson(Map<String, dynamic> json) =
      _$FailureNoConnectionImpl.fromJson;
}

/// @nodoc
abstract class _$$FailureCacheImplCopyWith<$Res> {
  factory _$$FailureCacheImplCopyWith(
          _$FailureCacheImpl value, $Res Function(_$FailureCacheImpl) then) =
      __$$FailureCacheImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureCacheImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureCacheImpl>
    implements _$$FailureCacheImplCopyWith<$Res> {
  __$$FailureCacheImplCopyWithImpl(
      _$FailureCacheImpl _value, $Res Function(_$FailureCacheImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FailureCacheImpl implements _FailureCache {
  const _$FailureCacheImpl({final String? $type}) : $type = $type ?? 'cache';

  factory _$FailureCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureCacheImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.cache()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureCacheImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return cache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return cache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureCacheImplToJson(
      this,
    );
  }
}

abstract class _FailureCache implements Failure {
  const factory _FailureCache() = _$FailureCacheImpl;

  factory _FailureCache.fromJson(Map<String, dynamic> json) =
      _$FailureCacheImpl.fromJson;
}

/// @nodoc
abstract class _$$FailureOTAImplCopyWith<$Res> {
  factory _$$FailureOTAImplCopyWith(
          _$FailureOTAImpl value, $Res Function(_$FailureOTAImpl) then) =
      __$$FailureOTAImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureOTAImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureOTAImpl>
    implements _$$FailureOTAImplCopyWith<$Res> {
  __$$FailureOTAImplCopyWithImpl(
      _$FailureOTAImpl _value, $Res Function(_$FailureOTAImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureOTAImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureOTAImpl implements _FailureOTA {
  const _$FailureOTAImpl({required this.message, final String? $type})
      : $type = $type ?? 'ota';

  factory _$FailureOTAImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureOTAImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.ota(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureOTAImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureOTAImplCopyWith<_$FailureOTAImpl> get copyWith =>
      __$$FailureOTAImplCopyWithImpl<_$FailureOTAImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? code) server,
    required TResult Function(String message) unauthorized,
    required TResult Function(Object e) unexpected,
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() noConnection,
    required TResult Function() cache,
    required TResult Function(String message) ota,
  }) {
    return ota(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? code)? server,
    TResult? Function(String message)? unauthorized,
    TResult? Function(Object e)? unexpected,
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? noConnection,
    TResult? Function()? cache,
    TResult? Function(String message)? ota,
  }) {
    return ota?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? code)? server,
    TResult Function(String message)? unauthorized,
    TResult Function(Object e)? unexpected,
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? noConnection,
    TResult Function()? cache,
    TResult Function(String message)? ota,
    required TResult orElse(),
  }) {
    if (ota != null) {
      return ota(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureServer value) server,
    required TResult Function(_FailureUnauthorized value) unauthorized,
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureConnectTimeOut value) connectTimeout,
    required TResult Function(_FailureSendTimeOut value) sendTimeout,
    required TResult Function(_FailureReceiveTimeout value) receiveTimeout,
    required TResult Function(_FailureNoConnection value) noConnection,
    required TResult Function(_FailureCache value) cache,
    required TResult Function(_FailureOTA value) ota,
  }) {
    return ota(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureServer value)? server,
    TResult? Function(_FailureUnauthorized value)? unauthorized,
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult? Function(_FailureSendTimeOut value)? sendTimeout,
    TResult? Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult? Function(_FailureNoConnection value)? noConnection,
    TResult? Function(_FailureCache value)? cache,
    TResult? Function(_FailureOTA value)? ota,
  }) {
    return ota?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureServer value)? server,
    TResult Function(_FailureUnauthorized value)? unauthorized,
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureConnectTimeOut value)? connectTimeout,
    TResult Function(_FailureSendTimeOut value)? sendTimeout,
    TResult Function(_FailureReceiveTimeout value)? receiveTimeout,
    TResult Function(_FailureNoConnection value)? noConnection,
    TResult Function(_FailureCache value)? cache,
    TResult Function(_FailureOTA value)? ota,
    required TResult orElse(),
  }) {
    if (ota != null) {
      return ota(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureOTAImplToJson(
      this,
    );
  }
}

abstract class _FailureOTA implements Failure {
  const factory _FailureOTA({required final String message}) = _$FailureOTAImpl;

  factory _FailureOTA.fromJson(Map<String, dynamic> json) =
      _$FailureOTAImpl.fromJson;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureOTAImplCopyWith<_$FailureOTAImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
