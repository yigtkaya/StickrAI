// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return _Urls.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  @JsonKey(name: "get")
  String? get urlsGet => throw _privateConstructorUsedError;
  @JsonKey(name: "cancel")
  String? get cancel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) =
      _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call(
      {@JsonKey(name: "get") String? urlsGet,
      @JsonKey(name: "cancel") String? cancel});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls>
    implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlsGet = freezed,
    Object? cancel = freezed,
  }) {
    return _then(_value.copyWith(
      urlsGet: freezed == urlsGet
          ? _value.urlsGet
          : urlsGet // ignore: cast_nullable_to_non_nullable
              as String?,
      cancel: freezed == cancel
          ? _value.cancel
          : cancel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlsImplCopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$UrlsImplCopyWith(
          _$UrlsImpl value, $Res Function(_$UrlsImpl) then) =
      __$$UrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "get") String? urlsGet,
      @JsonKey(name: "cancel") String? cancel});
}

/// @nodoc
class __$$UrlsImplCopyWithImpl<$Res>
    extends _$UrlsCopyWithImpl<$Res, _$UrlsImpl>
    implements _$$UrlsImplCopyWith<$Res> {
  __$$UrlsImplCopyWithImpl(_$UrlsImpl _value, $Res Function(_$UrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlsGet = freezed,
    Object? cancel = freezed,
  }) {
    return _then(_$UrlsImpl(
      urlsGet: freezed == urlsGet
          ? _value.urlsGet
          : urlsGet // ignore: cast_nullable_to_non_nullable
              as String?,
      cancel: freezed == cancel
          ? _value.cancel
          : cancel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsImpl implements _Urls {
  const _$UrlsImpl(
      {@JsonKey(name: "get") this.urlsGet,
      @JsonKey(name: "cancel") this.cancel});

  factory _$UrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsImplFromJson(json);

  @override
  @JsonKey(name: "get")
  final String? urlsGet;
  @override
  @JsonKey(name: "cancel")
  final String? cancel;

  @override
  String toString() {
    return 'Urls(urlsGet: $urlsGet, cancel: $cancel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsImpl &&
            (identical(other.urlsGet, urlsGet) || other.urlsGet == urlsGet) &&
            (identical(other.cancel, cancel) || other.cancel == cancel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, urlsGet, cancel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      __$$UrlsImplCopyWithImpl<_$UrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsImplToJson(
      this,
    );
  }
}

abstract class _Urls implements Urls {
  const factory _Urls(
      {@JsonKey(name: "get") final String? urlsGet,
      @JsonKey(name: "cancel") final String? cancel}) = _$UrlsImpl;

  factory _Urls.fromJson(Map<String, dynamic> json) = _$UrlsImpl.fromJson;

  @override
  @JsonKey(name: "get")
  String? get urlsGet;
  @override
  @JsonKey(name: "cancel")
  String? get cancel;
  @override
  @JsonKey(ignore: true)
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
