// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(StoreInfo storeInfo) needsUpdate,
    required TResult Function() jailbroken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(StoreInfo storeInfo)? needsUpdate,
    TResult? Function()? jailbroken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(StoreInfo storeInfo)? needsUpdate,
    TResult Function()? jailbroken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateError value) error,
    required TResult Function(AppStateLoading value) loading,
    required TResult Function(AppStateLoaded value) loaded,
    required TResult Function(AppStateNeedsUpdate value) needsUpdate,
    required TResult Function(AppStateJailbroken value) jailbroken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateError value)? error,
    TResult? Function(AppStateLoading value)? loading,
    TResult? Function(AppStateLoaded value)? loaded,
    TResult? Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult? Function(AppStateJailbroken value)? jailbroken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateError value)? error,
    TResult Function(AppStateLoading value)? loading,
    TResult Function(AppStateLoaded value)? loaded,
    TResult Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult Function(AppStateJailbroken value)? jailbroken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStateErrorImplCopyWith<$Res> {
  factory _$$AppStateErrorImplCopyWith(
          _$AppStateErrorImpl value, $Res Function(_$AppStateErrorImpl) then) =
      __$$AppStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateErrorImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateErrorImpl>
    implements _$$AppStateErrorImplCopyWith<$Res> {
  __$$AppStateErrorImplCopyWithImpl(
      _$AppStateErrorImpl _value, $Res Function(_$AppStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateErrorImpl implements AppStateError {
  const _$AppStateErrorImpl();

  @override
  String toString() {
    return 'AppState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(StoreInfo storeInfo) needsUpdate,
    required TResult Function() jailbroken,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(StoreInfo storeInfo)? needsUpdate,
    TResult? Function()? jailbroken,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(StoreInfo storeInfo)? needsUpdate,
    TResult Function()? jailbroken,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateError value) error,
    required TResult Function(AppStateLoading value) loading,
    required TResult Function(AppStateLoaded value) loaded,
    required TResult Function(AppStateNeedsUpdate value) needsUpdate,
    required TResult Function(AppStateJailbroken value) jailbroken,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateError value)? error,
    TResult? Function(AppStateLoading value)? loading,
    TResult? Function(AppStateLoaded value)? loaded,
    TResult? Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult? Function(AppStateJailbroken value)? jailbroken,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateError value)? error,
    TResult Function(AppStateLoading value)? loading,
    TResult Function(AppStateLoaded value)? loaded,
    TResult Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult Function(AppStateJailbroken value)? jailbroken,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppStateError implements AppState {
  const factory AppStateError() = _$AppStateErrorImpl;
}

/// @nodoc
abstract class _$$AppStateLoadingImplCopyWith<$Res> {
  factory _$$AppStateLoadingImplCopyWith(_$AppStateLoadingImpl value,
          $Res Function(_$AppStateLoadingImpl) then) =
      __$$AppStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateLoadingImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateLoadingImpl>
    implements _$$AppStateLoadingImplCopyWith<$Res> {
  __$$AppStateLoadingImplCopyWithImpl(
      _$AppStateLoadingImpl _value, $Res Function(_$AppStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateLoadingImpl implements AppStateLoading {
  const _$AppStateLoadingImpl();

  @override
  String toString() {
    return 'AppState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(StoreInfo storeInfo) needsUpdate,
    required TResult Function() jailbroken,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(StoreInfo storeInfo)? needsUpdate,
    TResult? Function()? jailbroken,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(StoreInfo storeInfo)? needsUpdate,
    TResult Function()? jailbroken,
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
    required TResult Function(AppStateError value) error,
    required TResult Function(AppStateLoading value) loading,
    required TResult Function(AppStateLoaded value) loaded,
    required TResult Function(AppStateNeedsUpdate value) needsUpdate,
    required TResult Function(AppStateJailbroken value) jailbroken,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateError value)? error,
    TResult? Function(AppStateLoading value)? loading,
    TResult? Function(AppStateLoaded value)? loaded,
    TResult? Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult? Function(AppStateJailbroken value)? jailbroken,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateError value)? error,
    TResult Function(AppStateLoading value)? loading,
    TResult Function(AppStateLoaded value)? loaded,
    TResult Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult Function(AppStateJailbroken value)? jailbroken,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppStateLoading implements AppState {
  const factory AppStateLoading() = _$AppStateLoadingImpl;
}

/// @nodoc
abstract class _$$AppStateLoadedImplCopyWith<$Res> {
  factory _$$AppStateLoadedImplCopyWith(_$AppStateLoadedImpl value,
          $Res Function(_$AppStateLoadedImpl) then) =
      __$$AppStateLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateLoadedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateLoadedImpl>
    implements _$$AppStateLoadedImplCopyWith<$Res> {
  __$$AppStateLoadedImplCopyWithImpl(
      _$AppStateLoadedImpl _value, $Res Function(_$AppStateLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateLoadedImpl implements AppStateLoaded {
  const _$AppStateLoadedImpl();

  @override
  String toString() {
    return 'AppState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(StoreInfo storeInfo) needsUpdate,
    required TResult Function() jailbroken,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(StoreInfo storeInfo)? needsUpdate,
    TResult? Function()? jailbroken,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(StoreInfo storeInfo)? needsUpdate,
    TResult Function()? jailbroken,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateError value) error,
    required TResult Function(AppStateLoading value) loading,
    required TResult Function(AppStateLoaded value) loaded,
    required TResult Function(AppStateNeedsUpdate value) needsUpdate,
    required TResult Function(AppStateJailbroken value) jailbroken,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateError value)? error,
    TResult? Function(AppStateLoading value)? loading,
    TResult? Function(AppStateLoaded value)? loaded,
    TResult? Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult? Function(AppStateJailbroken value)? jailbroken,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateError value)? error,
    TResult Function(AppStateLoading value)? loading,
    TResult Function(AppStateLoaded value)? loaded,
    TResult Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult Function(AppStateJailbroken value)? jailbroken,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AppStateLoaded implements AppState {
  const factory AppStateLoaded() = _$AppStateLoadedImpl;
}

/// @nodoc
abstract class _$$AppStateNeedsUpdateImplCopyWith<$Res> {
  factory _$$AppStateNeedsUpdateImplCopyWith(_$AppStateNeedsUpdateImpl value,
          $Res Function(_$AppStateNeedsUpdateImpl) then) =
      __$$AppStateNeedsUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreInfo storeInfo});
}

/// @nodoc
class __$$AppStateNeedsUpdateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateNeedsUpdateImpl>
    implements _$$AppStateNeedsUpdateImplCopyWith<$Res> {
  __$$AppStateNeedsUpdateImplCopyWithImpl(_$AppStateNeedsUpdateImpl _value,
      $Res Function(_$AppStateNeedsUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeInfo = null,
  }) {
    return _then(_$AppStateNeedsUpdateImpl(
      storeInfo: null == storeInfo
          ? _value.storeInfo
          : storeInfo // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
    ));
  }
}

/// @nodoc

class _$AppStateNeedsUpdateImpl implements AppStateNeedsUpdate {
  const _$AppStateNeedsUpdateImpl({required this.storeInfo});

  @override
  final StoreInfo storeInfo;

  @override
  String toString() {
    return 'AppState.needsUpdate(storeInfo: $storeInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateNeedsUpdateImpl &&
            (identical(other.storeInfo, storeInfo) ||
                other.storeInfo == storeInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateNeedsUpdateImplCopyWith<_$AppStateNeedsUpdateImpl> get copyWith =>
      __$$AppStateNeedsUpdateImplCopyWithImpl<_$AppStateNeedsUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(StoreInfo storeInfo) needsUpdate,
    required TResult Function() jailbroken,
  }) {
    return needsUpdate(storeInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(StoreInfo storeInfo)? needsUpdate,
    TResult? Function()? jailbroken,
  }) {
    return needsUpdate?.call(storeInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(StoreInfo storeInfo)? needsUpdate,
    TResult Function()? jailbroken,
    required TResult orElse(),
  }) {
    if (needsUpdate != null) {
      return needsUpdate(storeInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateError value) error,
    required TResult Function(AppStateLoading value) loading,
    required TResult Function(AppStateLoaded value) loaded,
    required TResult Function(AppStateNeedsUpdate value) needsUpdate,
    required TResult Function(AppStateJailbroken value) jailbroken,
  }) {
    return needsUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateError value)? error,
    TResult? Function(AppStateLoading value)? loading,
    TResult? Function(AppStateLoaded value)? loaded,
    TResult? Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult? Function(AppStateJailbroken value)? jailbroken,
  }) {
    return needsUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateError value)? error,
    TResult Function(AppStateLoading value)? loading,
    TResult Function(AppStateLoaded value)? loaded,
    TResult Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult Function(AppStateJailbroken value)? jailbroken,
    required TResult orElse(),
  }) {
    if (needsUpdate != null) {
      return needsUpdate(this);
    }
    return orElse();
  }
}

abstract class AppStateNeedsUpdate implements AppState {
  const factory AppStateNeedsUpdate({required final StoreInfo storeInfo}) =
      _$AppStateNeedsUpdateImpl;

  StoreInfo get storeInfo;
  @JsonKey(ignore: true)
  _$$AppStateNeedsUpdateImplCopyWith<_$AppStateNeedsUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateJailbrokenImplCopyWith<$Res> {
  factory _$$AppStateJailbrokenImplCopyWith(_$AppStateJailbrokenImpl value,
          $Res Function(_$AppStateJailbrokenImpl) then) =
      __$$AppStateJailbrokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateJailbrokenImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateJailbrokenImpl>
    implements _$$AppStateJailbrokenImplCopyWith<$Res> {
  __$$AppStateJailbrokenImplCopyWithImpl(_$AppStateJailbrokenImpl _value,
      $Res Function(_$AppStateJailbrokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateJailbrokenImpl implements AppStateJailbroken {
  const _$AppStateJailbrokenImpl();

  @override
  String toString() {
    return 'AppState.jailbroken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateJailbrokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(StoreInfo storeInfo) needsUpdate,
    required TResult Function() jailbroken,
  }) {
    return jailbroken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(StoreInfo storeInfo)? needsUpdate,
    TResult? Function()? jailbroken,
  }) {
    return jailbroken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(StoreInfo storeInfo)? needsUpdate,
    TResult Function()? jailbroken,
    required TResult orElse(),
  }) {
    if (jailbroken != null) {
      return jailbroken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateError value) error,
    required TResult Function(AppStateLoading value) loading,
    required TResult Function(AppStateLoaded value) loaded,
    required TResult Function(AppStateNeedsUpdate value) needsUpdate,
    required TResult Function(AppStateJailbroken value) jailbroken,
  }) {
    return jailbroken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateError value)? error,
    TResult? Function(AppStateLoading value)? loading,
    TResult? Function(AppStateLoaded value)? loaded,
    TResult? Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult? Function(AppStateJailbroken value)? jailbroken,
  }) {
    return jailbroken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateError value)? error,
    TResult Function(AppStateLoading value)? loading,
    TResult Function(AppStateLoaded value)? loaded,
    TResult Function(AppStateNeedsUpdate value)? needsUpdate,
    TResult Function(AppStateJailbroken value)? jailbroken,
    required TResult orElse(),
  }) {
    if (jailbroken != null) {
      return jailbroken(this);
    }
    return orElse();
  }
}

abstract class AppStateJailbroken implements AppState {
  const factory AppStateJailbroken() = _$AppStateJailbrokenImpl;
}
