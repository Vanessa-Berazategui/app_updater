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
  bool get downloadingUpdate => throw _privateConstructorUsedError;
  bool get downloadingIsDone => throw _privateConstructorUsedError;
  double get downloadingProgress => throw _privateConstructorUsedError;
  bool get downloadingDialogOpened => throw _privateConstructorUsedError;
  PackageInfo? get packageInfo => throw _privateConstructorUsedError;
  BackendInfo? get backendInfo => throw _privateConstructorUsedError;
  List<ConnectivityResult>? get connectivity =>
      throw _privateConstructorUsedError;
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
      bool downloadingUpdate,
      bool downloadingIsDone,
      double downloadingProgress,
      bool downloadingDialogOpened,
      PackageInfo? packageInfo,
      BackendInfo? backendInfo,
      List<ConnectivityResult>? connectivity,
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
    Object? downloadingUpdate = null,
    Object? downloadingIsDone = null,
    Object? downloadingProgress = null,
    Object? downloadingDialogOpened = null,
    Object? packageInfo = freezed,
    Object? backendInfo = freezed,
    Object? connectivity = freezed,
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
      downloadingUpdate: null == downloadingUpdate
          ? _value.downloadingUpdate
          : downloadingUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadingIsDone: null == downloadingIsDone
          ? _value.downloadingIsDone
          : downloadingIsDone // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadingProgress: null == downloadingProgress
          ? _value.downloadingProgress
          : downloadingProgress // ignore: cast_nullable_to_non_nullable
              as double,
      downloadingDialogOpened: null == downloadingDialogOpened
          ? _value.downloadingDialogOpened
          : downloadingDialogOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      packageInfo: freezed == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo?,
      backendInfo: freezed == backendInfo
          ? _value.backendInfo
          : backendInfo // ignore: cast_nullable_to_non_nullable
              as BackendInfo?,
      connectivity: freezed == connectivity
          ? _value.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as List<ConnectivityResult>?,
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
      bool downloadingUpdate,
      bool downloadingIsDone,
      double downloadingProgress,
      bool downloadingDialogOpened,
      PackageInfo? packageInfo,
      BackendInfo? backendInfo,
      List<ConnectivityResult>? connectivity,
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
    Object? downloadingUpdate = null,
    Object? downloadingIsDone = null,
    Object? downloadingProgress = null,
    Object? downloadingDialogOpened = null,
    Object? packageInfo = freezed,
    Object? backendInfo = freezed,
    Object? connectivity = freezed,
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
      downloadingUpdate: null == downloadingUpdate
          ? _value.downloadingUpdate
          : downloadingUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadingIsDone: null == downloadingIsDone
          ? _value.downloadingIsDone
          : downloadingIsDone // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadingProgress: null == downloadingProgress
          ? _value.downloadingProgress
          : downloadingProgress // ignore: cast_nullable_to_non_nullable
              as double,
      downloadingDialogOpened: null == downloadingDialogOpened
          ? _value.downloadingDialogOpened
          : downloadingDialogOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      packageInfo: freezed == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo?,
      backendInfo: freezed == backendInfo
          ? _value.backendInfo
          : backendInfo // ignore: cast_nullable_to_non_nullable
              as BackendInfo?,
      connectivity: freezed == connectivity
          ? _value._connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as List<ConnectivityResult>?,
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
      required this.downloadingUpdate,
      required this.downloadingIsDone,
      required this.downloadingProgress,
      required this.downloadingDialogOpened,
      this.packageInfo,
      this.backendInfo,
      final List<ConnectivityResult>? connectivity,
      this.failure})
      : _connectivity = connectivity;

  @override
  final bool loadingPackageInfo;
  @override
  final bool loadingBackendInfo;
  @override
  final bool downloadingUpdate;
  @override
  final bool downloadingIsDone;
  @override
  final double downloadingProgress;
  @override
  final bool downloadingDialogOpened;
  @override
  final PackageInfo? packageInfo;
  @override
  final BackendInfo? backendInfo;
  final List<ConnectivityResult>? _connectivity;
  @override
  List<ConnectivityResult>? get connectivity {
    final value = _connectivity;
    if (value == null) return null;
    if (_connectivity is EqualUnmodifiableListView) return _connectivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'HomeState(loadingPackageInfo: $loadingPackageInfo, loadingBackendInfo: $loadingBackendInfo, downloadingUpdate: $downloadingUpdate, downloadingIsDone: $downloadingIsDone, downloadingProgress: $downloadingProgress, downloadingDialogOpened: $downloadingDialogOpened, packageInfo: $packageInfo, backendInfo: $backendInfo, connectivity: $connectivity, failure: $failure)';
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
            (identical(other.downloadingUpdate, downloadingUpdate) ||
                other.downloadingUpdate == downloadingUpdate) &&
            (identical(other.downloadingIsDone, downloadingIsDone) ||
                other.downloadingIsDone == downloadingIsDone) &&
            (identical(other.downloadingProgress, downloadingProgress) ||
                other.downloadingProgress == downloadingProgress) &&
            (identical(
                    other.downloadingDialogOpened, downloadingDialogOpened) ||
                other.downloadingDialogOpened == downloadingDialogOpened) &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo) &&
            (identical(other.backendInfo, backendInfo) ||
                other.backendInfo == backendInfo) &&
            const DeepCollectionEquality()
                .equals(other._connectivity, _connectivity) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadingPackageInfo,
      loadingBackendInfo,
      downloadingUpdate,
      downloadingIsDone,
      downloadingProgress,
      downloadingDialogOpened,
      packageInfo,
      backendInfo,
      const DeepCollectionEquality().hash(_connectivity),
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
      required final bool downloadingUpdate,
      required final bool downloadingIsDone,
      required final double downloadingProgress,
      required final bool downloadingDialogOpened,
      final PackageInfo? packageInfo,
      final BackendInfo? backendInfo,
      final List<ConnectivityResult>? connectivity,
      final Failure? failure}) = _$HomeStateImpl;

  @override
  bool get loadingPackageInfo;
  @override
  bool get loadingBackendInfo;
  @override
  bool get downloadingUpdate;
  @override
  bool get downloadingIsDone;
  @override
  double get downloadingProgress;
  @override
  bool get downloadingDialogOpened;
  @override
  PackageInfo? get packageInfo;
  @override
  BackendInfo? get backendInfo;
  @override
  List<ConnectivityResult>? get connectivity;
  @override
  Failure? get failure;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
