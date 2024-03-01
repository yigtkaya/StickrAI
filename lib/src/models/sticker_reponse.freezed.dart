// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StickerResponse _$StickerResponseFromJson(Map<String, dynamic> json) {
  return _StickerResponse.fromJson(json);
}

/// @nodoc
mixin _$StickerResponse {
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "output")
  List<String>? get output => throw _privateConstructorUsedError;
  @JsonKey(name: "succes")
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerResponseCopyWith<StickerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerResponseCopyWith<$Res> {
  factory $StickerResponseCopyWith(
          StickerResponse value, $Res Function(StickerResponse) then) =
      _$StickerResponseCopyWithImpl<$Res, StickerResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "error") dynamic error,
      @JsonKey(name: "output") List<String>? output,
      @JsonKey(name: "succes") bool? status});
}

/// @nodoc
class _$StickerResponseCopyWithImpl<$Res, $Val extends StickerResponse>
    implements $StickerResponseCopyWith<$Res> {
  _$StickerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? output = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StickerResponseImplCopyWith<$Res>
    implements $StickerResponseCopyWith<$Res> {
  factory _$$StickerResponseImplCopyWith(_$StickerResponseImpl value,
          $Res Function(_$StickerResponseImpl) then) =
      __$$StickerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "error") dynamic error,
      @JsonKey(name: "output") List<String>? output,
      @JsonKey(name: "succes") bool? status});
}

/// @nodoc
class __$$StickerResponseImplCopyWithImpl<$Res>
    extends _$StickerResponseCopyWithImpl<$Res, _$StickerResponseImpl>
    implements _$$StickerResponseImplCopyWith<$Res> {
  __$$StickerResponseImplCopyWithImpl(
      _$StickerResponseImpl _value, $Res Function(_$StickerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? output = freezed,
    Object? status = freezed,
  }) {
    return _then(_$StickerResponseImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      output: freezed == output
          ? _value._output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickerResponseImpl implements _StickerResponse {
  const _$StickerResponseImpl(
      {@JsonKey(name: "error") this.error,
      @JsonKey(name: "output") final List<String>? output,
      @JsonKey(name: "succes") this.status})
      : _output = output;

  factory _$StickerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerResponseImplFromJson(json);

  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<String>? _output;
  @override
  @JsonKey(name: "output")
  List<String>? get output {
    final value = _output;
    if (value == null) return null;
    if (_output is EqualUnmodifiableListView) return _output;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "succes")
  final bool? status;

  @override
  String toString() {
    return 'StickerResponse(error: $error, output: $output, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickerResponseImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._output, _output) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_output),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerResponseImplCopyWith<_$StickerResponseImpl> get copyWith =>
      __$$StickerResponseImplCopyWithImpl<_$StickerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerResponseImplToJson(
      this,
    );
  }
}

abstract class _StickerResponse implements StickerResponse {
  const factory _StickerResponse(
      {@JsonKey(name: "error") final dynamic error,
      @JsonKey(name: "output") final List<String>? output,
      @JsonKey(name: "succes") final bool? status}) = _$StickerResponseImpl;

  factory _StickerResponse.fromJson(Map<String, dynamic> json) =
      _$StickerResponseImpl.fromJson;

  @override
  @JsonKey(name: "error")
  dynamic get error;
  @override
  @JsonKey(name: "output")
  List<String>? get output;
  @override
  @JsonKey(name: "succes")
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$StickerResponseImplCopyWith<_$StickerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
