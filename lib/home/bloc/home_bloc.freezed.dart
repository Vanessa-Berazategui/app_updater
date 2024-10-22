// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool get loadingPackageInfo => throw _privateConstructorUsedError;
  bool get loadingBackendInfo => throw _privateConstructorUsedError;
  bool get installingUpdate => throw _privateConstructorUsedError;
  bool get installationIsDone => throw _privateConstructorUsedError;
  PackageInfo? get packageInfo => throw _privateConstructorUsedError;
  BackendInfo? get backendInfo => throw _privateConstructorUsedError;
  double get installationProgress => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool loadingPackageInfo,
      bool loadingBackendInfo,
      bool installingUpdate,
      bool installationIsDone,
      PackageInfo? packageInfo,
      BackendInfo? backendInfo,
      double installationProgress,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingPackageInfo = null,
    Object? loadingBackendInfo = null,
    Object? installingUpdate = null,
    Object? installationIsDone = null,
    Object? packageInfo = freezed,
    Object? backendInfo = freezed,
    Object? installationProgress = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      loadingPackageInfo: null == loadingPackageInfo
          ? _value.loadingPackageInfo
          : loadingPackageInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingBackendInfo: null == loadingBackendInfo
          ? _value.loadingBackendInfo
          : loadingBackendInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      installingUpdate: null == installingUpdate
          ? _value.installingUpdate
          : installingUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      installationIsDone: null == installationIsDone
          ? _value.installationIsDone
          : installationIsDone // ignore: cast_nullable_to_non_nullable
              as bool,
      packageInfo: freezed == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo?,
      backendInfo: freezed == backendInfo
          ? _value.backendInfo
          : backendInfo // ignore: cast_nullable_to_non_nullable
              as BackendInfo?,
      installationProgress: null == installationProgress
          ? _value.installationProgress
          : installationProgress // ignore: cast_nullable_to_non_nullable
              as double,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loadingPackageInfo,
      bool loadingBackendInfo,
      bool installingUpdate,
      bool installationIsDone,
      PackageInfo? packageInfo,
      BackendInfo? backendInfo,
      double installationProgress,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingPackageInfo = null,
    Object? loadingBackendInfo = null,
    Object? installingUpdate = null,
    Object? installationIsDone = null,
    Object? packageInfo = freezed,
    Object? backendInfo = freezed,
    Object? installationProgress = null,
    Object? failure = freezed,
  }) {
    return _then(_$HomeStateImpl(
      loadingPackageInfo: null == loadingPackageInfo
          ? _value.loadingPackageInfo
          : loadingPackageInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingBackendInfo: null == loadingBackendInfo
          ? _value.loadingBackendInfo
          : loadingBackendInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      installingUpdate: null == installingUpdate
          ? _value.installingUpdate
          : installingUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      installationIsDone: null == installationIsDone
          ? _value.installationIsDone
          : installationIsDone // ignore: cast_nullable_to_non_nullable
              as bool,
      packageInfo: freezed == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo?,
      backendInfo: freezed == backendInfo
          ? _value.backendInfo
          : backendInfo // ignore: cast_nullable_to_non_nullable
              as BackendInfo?,
      installationProgress: null == installationProgress
          ? _value.installationProgress
          : installationProgress // ignore: cast_nullable_to_non_nullable
              as double,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.loadingPackageInfo,
      required this.loadingBackendInfo,
      required this.installingUpdate,
      required this.installationIsDone,
      this.packageInfo,
      this.backendInfo,
      required this.installationProgress,
      this.failure});

  @override
  final bool loadingPackageInfo;
  @override
  final bool loadingBackendInfo;
  @override
  final bool installingUpdate;
  @override
  final bool installationIsDone;
  @override
  final PackageInfo? packageInfo;
  @override
  final BackendInfo? backendInfo;
  @override
  final double installationProgress;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'HomeState(loadingPackageInfo: $loadingPackageInfo, loadingBackendInfo: $loadingBackendInfo, installingUpdate: $installingUpdate, installationIsDone: $installationIsDone, packageInfo: $packageInfo, backendInfo: $backendInfo, installationProgress: $installationProgress, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.loadingPackageInfo, loadingPackageInfo) ||
                other.loadingPackageInfo == loadingPackageInfo) &&
            (identical(other.loadingBackendInfo, loadingBackendInfo) ||
                other.loadingBackendInfo == loadingBackendInfo) &&
            (identical(other.installingUpdate, installingUpdate) ||
                other.installingUpdate == installingUpdate) &&
            (identical(other.installationIsDone, installationIsDone) ||
                other.installationIsDone == installationIsDone) &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo) &&
            (identical(other.backendInfo, backendInfo) ||
                other.backendInfo == backendInfo) &&
            (identical(other.installationProgress, installationProgress) ||
                other.installationProgress == installationProgress) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadingPackageInfo,
      loadingBackendInfo,
      installingUpdate,
      installationIsDone,
      packageInfo,
      backendInfo,
      installationProgress,
      failure);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool loadingPackageInfo,
      required final bool loadingBackendInfo,
      required final bool installingUpdate,
      required final bool installationIsDone,
      final PackageInfo? packageInfo,
      final BackendInfo? backendInfo,
      required final double installationProgress,
      final Failure? failure}) = _$HomeStateImpl;

  @override
  bool get loadingPackageInfo;
  @override
  bool get loadingBackendInfo;
  @override
  bool get installingUpdate;
  @override
  bool get installationIsDone;
  @override
  PackageInfo? get packageInfo;
  @override
  BackendInfo? get backendInfo;
  @override
  double get installationProgress;
  @override
  Failure? get failure;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
