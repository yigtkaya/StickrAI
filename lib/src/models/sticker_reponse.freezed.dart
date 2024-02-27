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
  @JsonKey(name: "completed_at")
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "input")
  Input? get input => throw _privateConstructorUsedError;
  @JsonKey(name: "logs")
  String? get logs => throw _privateConstructorUsedError;
  @JsonKey(name: "metrics")
  Metrics? get metrics => throw _privateConstructorUsedError;
  @JsonKey(name: "output")
  List<String>? get output => throw _privateConstructorUsedError;
  @JsonKey(name: "started_at")
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "urls")
  Urls? get urls => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerResponseCopyWith<StickerResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerResponseCopyWith<$Res> {
  factory $StickerResponseCopyWith(StickerResponse value, $Res Function(StickerResponse) then) =
      _$StickerResponseCopyWithImpl<$Res, StickerResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "completed_at") DateTime? completedAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "input") Input? input,
      @JsonKey(name: "logs") String? logs,
      @JsonKey(name: "metrics") Metrics? metrics,
      @JsonKey(name: "output") List<String>? output,
      @JsonKey(name: "started_at") DateTime? startedAt,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "urls") Urls? urls,
      @JsonKey(name: "version") String? version});

  $InputCopyWith<$Res>? get input;
  $MetricsCopyWith<$Res>? get metrics;
  $UrlsCopyWith<$Res>? get urls;
}

/// @nodoc
class _$StickerResponseCopyWithImpl<$Res, $Val extends StickerResponse> implements $StickerResponseCopyWith<$Res> {
  _$StickerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? error = freezed,
    Object? id = freezed,
    Object? input = freezed,
    Object? logs = freezed,
    Object? metrics = freezed,
    Object? output = freezed,
    Object? startedAt = freezed,
    Object? status = freezed,
    Object? urls = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Input?,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as String?,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics?,
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputCopyWith<$Res>? get input {
    if (_value.input == null) {
      return null;
    }

    return $InputCopyWith<$Res>(_value.input!, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetricsCopyWith<$Res>? get metrics {
    if (_value.metrics == null) {
      return null;
    }

    return $MetricsCopyWith<$Res>(_value.metrics!, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res>? get urls {
    if (_value.urls == null) {
      return null;
    }

    return $UrlsCopyWith<$Res>(_value.urls!, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StickerResponseImplCopyWith<$Res> implements $StickerResponseCopyWith<$Res> {
  factory _$$StickerResponseImplCopyWith(_$StickerResponseImpl value, $Res Function(_$StickerResponseImpl) then) =
      __$$StickerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "completed_at") DateTime? completedAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "input") Input? input,
      @JsonKey(name: "logs") String? logs,
      @JsonKey(name: "metrics") Metrics? metrics,
      @JsonKey(name: "output") List<String>? output,
      @JsonKey(name: "started_at") DateTime? startedAt,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "urls") Urls? urls,
      @JsonKey(name: "version") String? version});

  @override
  $InputCopyWith<$Res>? get input;
  @override
  $MetricsCopyWith<$Res>? get metrics;
  @override
  $UrlsCopyWith<$Res>? get urls;
}

/// @nodoc
class __$$StickerResponseImplCopyWithImpl<$Res> extends _$StickerResponseCopyWithImpl<$Res, _$StickerResponseImpl>
    implements _$$StickerResponseImplCopyWith<$Res> {
  __$$StickerResponseImplCopyWithImpl(_$StickerResponseImpl _value, $Res Function(_$StickerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? error = freezed,
    Object? id = freezed,
    Object? input = freezed,
    Object? logs = freezed,
    Object? metrics = freezed,
    Object? output = freezed,
    Object? startedAt = freezed,
    Object? status = freezed,
    Object? urls = freezed,
    Object? version = freezed,
  }) {
    return _then(_$StickerResponseImpl(
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Input?,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as String?,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics?,
      output: freezed == output
          ? _value._output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickerResponseImpl implements _StickerResponse {
  const _$StickerResponseImpl(
      {@JsonKey(name: "completed_at") this.completedAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "input") this.input,
      @JsonKey(name: "logs") this.logs,
      @JsonKey(name: "metrics") this.metrics,
      @JsonKey(name: "output") final List<String>? output,
      @JsonKey(name: "started_at") this.startedAt,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "urls") this.urls,
      @JsonKey(name: "version") this.version})
      : _output = output;

  factory _$StickerResponseImpl.fromJson(Map<String, dynamic> json) => _$$StickerResponseImplFromJson(json);

  @override
  @JsonKey(name: "completed_at")
  final DateTime? completedAt;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "input")
  final Input? input;
  @override
  @JsonKey(name: "logs")
  final String? logs;
  @override
  @JsonKey(name: "metrics")
  final Metrics? metrics;
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
  @JsonKey(name: "started_at")
  final DateTime? startedAt;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "urls")
  final Urls? urls;
  @override
  @JsonKey(name: "version")
  final String? version;

  @override
  String toString() {
    return 'StickerResponse(completedAt: $completedAt, createdAt: $createdAt, error: $error, id: $id, input: $input, logs: $logs, metrics: $metrics, output: $output, startedAt: $startedAt, status: $status, urls: $urls, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickerResponseImpl &&
            (identical(other.completedAt, completedAt) || other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.logs, logs) || other.logs == logs) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            const DeepCollectionEquality().equals(other._output, _output) &&
            (identical(other.startedAt, startedAt) || other.startedAt == startedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, completedAt, createdAt, const DeepCollectionEquality().hash(error), id,
      input, logs, metrics, const DeepCollectionEquality().hash(_output), startedAt, status, urls, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerResponseImplCopyWith<_$StickerResponseImpl> get copyWith =>
      __$$StickerResponseImplCopyWithImpl<_$StickerResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerResponseImplToJson(
      this,
    );
  }
}

abstract class _StickerResponse implements StickerResponse {
  const factory _StickerResponse(
      {@JsonKey(name: "completed_at") final DateTime? completedAt,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "error") final dynamic error,
      @JsonKey(name: "id") final String? id,
      @JsonKey(name: "input") final Input? input,
      @JsonKey(name: "logs") final String? logs,
      @JsonKey(name: "metrics") final Metrics? metrics,
      @JsonKey(name: "output") final List<String>? output,
      @JsonKey(name: "started_at") final DateTime? startedAt,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "urls") final Urls? urls,
      @JsonKey(name: "version") final String? version}) = _$StickerResponseImpl;

  factory _StickerResponse.fromJson(Map<String, dynamic> json) = _$StickerResponseImpl.fromJson;

  @override
  @JsonKey(name: "completed_at")
  DateTime? get completedAt;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "error")
  dynamic get error;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "input")
  Input? get input;
  @override
  @JsonKey(name: "logs")
  String? get logs;
  @override
  @JsonKey(name: "metrics")
  Metrics? get metrics;
  @override
  @JsonKey(name: "output")
  List<String>? get output;
  @override
  @JsonKey(name: "started_at")
  DateTime? get startedAt;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "urls")
  Urls? get urls;
  @override
  @JsonKey(name: "version")
  String? get version;
  @override
  @JsonKey(ignore: true)
  _$$StickerResponseImplCopyWith<_$StickerResponseImpl> get copyWith => throw _privateConstructorUsedError;
}
