// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Metrics _$MetricsFromJson(Map<String, dynamic> json) {
  return _Metrics.fromJson(json);
}

/// @nodoc
mixin _$Metrics {
  @JsonKey(name: "predict_time")
  double? get predictTime => throw _privateConstructorUsedError;
  @JsonKey(name: "total_time")
  double? get totalTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetricsCopyWith<Metrics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsCopyWith<$Res> {
  factory $MetricsCopyWith(Metrics value, $Res Function(Metrics) then) =
      _$MetricsCopyWithImpl<$Res, Metrics>;
  @useResult
  $Res call(
      {@JsonKey(name: "predict_time") double? predictTime,
      @JsonKey(name: "total_time") double? totalTime});
}

/// @nodoc
class _$MetricsCopyWithImpl<$Res, $Val extends Metrics>
    implements $MetricsCopyWith<$Res> {
  _$MetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictTime = freezed,
    Object? totalTime = freezed,
  }) {
    return _then(_value.copyWith(
      predictTime: freezed == predictTime
          ? _value.predictTime
          : predictTime // ignore: cast_nullable_to_non_nullable
              as double?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricsImplCopyWith<$Res> implements $MetricsCopyWith<$Res> {
  factory _$$MetricsImplCopyWith(
          _$MetricsImpl value, $Res Function(_$MetricsImpl) then) =
      __$$MetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "predict_time") double? predictTime,
      @JsonKey(name: "total_time") double? totalTime});
}

/// @nodoc
class __$$MetricsImplCopyWithImpl<$Res>
    extends _$MetricsCopyWithImpl<$Res, _$MetricsImpl>
    implements _$$MetricsImplCopyWith<$Res> {
  __$$MetricsImplCopyWithImpl(
      _$MetricsImpl _value, $Res Function(_$MetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictTime = freezed,
    Object? totalTime = freezed,
  }) {
    return _then(_$MetricsImpl(
      predictTime: freezed == predictTime
          ? _value.predictTime
          : predictTime // ignore: cast_nullable_to_non_nullable
              as double?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricsImpl implements _Metrics {
  const _$MetricsImpl(
      {@JsonKey(name: "predict_time") this.predictTime,
      @JsonKey(name: "total_time") this.totalTime});

  factory _$MetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricsImplFromJson(json);

  @override
  @JsonKey(name: "predict_time")
  final double? predictTime;
  @override
  @JsonKey(name: "total_time")
  final double? totalTime;

  @override
  String toString() {
    return 'Metrics(predictTime: $predictTime, totalTime: $totalTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricsImpl &&
            (identical(other.predictTime, predictTime) ||
                other.predictTime == predictTime) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, predictTime, totalTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricsImplCopyWith<_$MetricsImpl> get copyWith =>
      __$$MetricsImplCopyWithImpl<_$MetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricsImplToJson(
      this,
    );
  }
}

abstract class _Metrics implements Metrics {
  const factory _Metrics(
      {@JsonKey(name: "predict_time") final double? predictTime,
      @JsonKey(name: "total_time") final double? totalTime}) = _$MetricsImpl;

  factory _Metrics.fromJson(Map<String, dynamic> json) = _$MetricsImpl.fromJson;

  @override
  @JsonKey(name: "predict_time")
  double? get predictTime;
  @override
  @JsonKey(name: "total_time")
  double? get totalTime;
  @override
  @JsonKey(ignore: true)
  _$$MetricsImplCopyWith<_$MetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
