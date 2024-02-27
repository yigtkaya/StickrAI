// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DioState {
  Dio get dioClient => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DioStateCopyWith<DioState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DioStateCopyWith<$Res> {
  factory $DioStateCopyWith(DioState value, $Res Function(DioState) then) = _$DioStateCopyWithImpl<$Res, DioState>;
  @useResult
  $Res call({Dio dioClient, String locale});
}

/// @nodoc
class _$DioStateCopyWithImpl<$Res, $Val extends DioState> implements $DioStateCopyWith<$Res> {
  _$DioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dioClient = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      dioClient: null == dioClient
          ? _value.dioClient
          : dioClient // ignore: cast_nullable_to_non_nullable
              as Dio,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DioStateImplCopyWith<$Res> implements $DioStateCopyWith<$Res> {
  factory _$$DioStateImplCopyWith(_$DioStateImpl value, $Res Function(_$DioStateImpl) then) =
      __$$DioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dio dioClient, String locale});
}

/// @nodoc
class __$$DioStateImplCopyWithImpl<$Res> extends _$DioStateCopyWithImpl<$Res, _$DioStateImpl>
    implements _$$DioStateImplCopyWith<$Res> {
  __$$DioStateImplCopyWithImpl(_$DioStateImpl _value, $Res Function(_$DioStateImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dioClient = null,
    Object? locale = null,
  }) {
    return _then(_$DioStateImpl(
      dioClient: null == dioClient
          ? _value.dioClient
          : dioClient // ignore: cast_nullable_to_non_nullable
              as Dio,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DioStateImpl implements _DioState {
  const _$DioStateImpl({required this.dioClient, required this.locale});

  @override
  final Dio dioClient;
  @override
  final String locale;

  @override
  String toString() {
    return 'DioState(dioClient: $dioClient, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DioStateImpl &&
            (identical(other.dioClient, dioClient) || other.dioClient == dioClient) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dioClient, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DioStateImplCopyWith<_$DioStateImpl> get copyWith =>
      __$$DioStateImplCopyWithImpl<_$DioStateImpl>(this, _$identity);
}

abstract class _DioState implements DioState {
  const factory _DioState({required final Dio dioClient, required final String locale}) = _$DioStateImpl;

  @override
  Dio get dioClient;
  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$$DioStateImplCopyWith<_$DioStateImpl> get copyWith => throw _privateConstructorUsedError;
}
