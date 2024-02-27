// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Input _$InputFromJson(Map<String, dynamic> json) {
  return _Input.fromJson(json);
}

/// @nodoc
mixin _$Input {
  @JsonKey(name: "steps")
  int? get steps => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "prompt")
  String? get prompt => throw _privateConstructorUsedError;
  @JsonKey(name: "upscale")
  bool? get upscale => throw _privateConstructorUsedError;
  @JsonKey(name: "upscale_steps")
  int? get upscaleSteps => throw _privateConstructorUsedError;
  @JsonKey(name: "negative_prompt")
  String? get negativePrompt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCopyWith<Input> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCopyWith<$Res> {
  factory $InputCopyWith(Input value, $Res Function(Input) then) = _$InputCopyWithImpl<$Res, Input>;
  @useResult
  $Res call(
      {@JsonKey(name: "steps") int? steps,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "prompt") String? prompt,
      @JsonKey(name: "upscale") bool? upscale,
      @JsonKey(name: "upscale_steps") int? upscaleSteps,
      @JsonKey(name: "negative_prompt") String? negativePrompt});
}

/// @nodoc
class _$InputCopyWithImpl<$Res, $Val extends Input> implements $InputCopyWith<$Res> {
  _$InputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? prompt = freezed,
    Object? upscale = freezed,
    Object? upscaleSteps = freezed,
    Object? negativePrompt = freezed,
  }) {
    return _then(_value.copyWith(
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      upscale: freezed == upscale
          ? _value.upscale
          : upscale // ignore: cast_nullable_to_non_nullable
              as bool?,
      upscaleSteps: freezed == upscaleSteps
          ? _value.upscaleSteps
          : upscaleSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      negativePrompt: freezed == negativePrompt
          ? _value.negativePrompt
          : negativePrompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputImplCopyWith<$Res> implements $InputCopyWith<$Res> {
  factory _$$InputImplCopyWith(_$InputImpl value, $Res Function(_$InputImpl) then) = __$$InputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "steps") int? steps,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "prompt") String? prompt,
      @JsonKey(name: "upscale") bool? upscale,
      @JsonKey(name: "upscale_steps") int? upscaleSteps,
      @JsonKey(name: "negative_prompt") String? negativePrompt});
}

/// @nodoc
class __$$InputImplCopyWithImpl<$Res> extends _$InputCopyWithImpl<$Res, _$InputImpl>
    implements _$$InputImplCopyWith<$Res> {
  __$$InputImplCopyWithImpl(_$InputImpl _value, $Res Function(_$InputImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? prompt = freezed,
    Object? upscale = freezed,
    Object? upscaleSteps = freezed,
    Object? negativePrompt = freezed,
  }) {
    return _then(_$InputImpl(
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      upscale: freezed == upscale
          ? _value.upscale
          : upscale // ignore: cast_nullable_to_non_nullable
              as bool?,
      upscaleSteps: freezed == upscaleSteps
          ? _value.upscaleSteps
          : upscaleSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      negativePrompt: freezed == negativePrompt
          ? _value.negativePrompt
          : negativePrompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputImpl implements _Input {
  const _$InputImpl(
      {@JsonKey(name: "steps") this.steps,
      @JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "prompt") this.prompt,
      @JsonKey(name: "upscale") this.upscale,
      @JsonKey(name: "upscale_steps") this.upscaleSteps,
      @JsonKey(name: "negative_prompt") this.negativePrompt});

  factory _$InputImpl.fromJson(Map<String, dynamic> json) => _$$InputImplFromJson(json);

  @override
  @JsonKey(name: "steps")
  final int? steps;
  @override
  @JsonKey(name: "width")
  final int? width;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "prompt")
  final String? prompt;
  @override
  @JsonKey(name: "upscale")
  final bool? upscale;
  @override
  @JsonKey(name: "upscale_steps")
  final int? upscaleSteps;
  @override
  @JsonKey(name: "negative_prompt")
  final String? negativePrompt;

  @override
  String toString() {
    return 'Input(steps: $steps, width: $width, height: $height, prompt: $prompt, upscale: $upscale, upscaleSteps: $upscaleSteps, negativePrompt: $negativePrompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputImpl &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.upscale, upscale) || other.upscale == upscale) &&
            (identical(other.upscaleSteps, upscaleSteps) || other.upscaleSteps == upscaleSteps) &&
            (identical(other.negativePrompt, negativePrompt) || other.negativePrompt == negativePrompt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, steps, width, height, prompt, upscale, upscaleSteps, negativePrompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputImplCopyWith<_$InputImpl> get copyWith => __$$InputImplCopyWithImpl<_$InputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputImplToJson(
      this,
    );
  }
}

abstract class _Input implements Input {
  const factory _Input(
      {@JsonKey(name: "steps") final int? steps,
      @JsonKey(name: "width") final int? width,
      @JsonKey(name: "height") final int? height,
      @JsonKey(name: "prompt") final String? prompt,
      @JsonKey(name: "upscale") final bool? upscale,
      @JsonKey(name: "upscale_steps") final int? upscaleSteps,
      @JsonKey(name: "negative_prompt") final String? negativePrompt}) = _$InputImpl;

  factory _Input.fromJson(Map<String, dynamic> json) = _$InputImpl.fromJson;

  @override
  @JsonKey(name: "steps")
  int? get steps;
  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "prompt")
  String? get prompt;
  @override
  @JsonKey(name: "upscale")
  bool? get upscale;
  @override
  @JsonKey(name: "upscale_steps")
  int? get upscaleSteps;
  @override
  @JsonKey(name: "negative_prompt")
  String? get negativePrompt;
  @override
  @JsonKey(ignore: true)
  _$$InputImplCopyWith<_$InputImpl> get copyWith => throw _privateConstructorUsedError;
}
