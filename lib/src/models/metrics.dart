// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics.freezed.dart';
part 'metrics.g.dart';

@freezed
class Metrics with _$Metrics {
  const factory Metrics({
    @JsonKey(name: "predict_time") double? predictTime,
    @JsonKey(name: "total_time") double? totalTime,
  }) = _Metrics;

  factory Metrics.fromJson(Map<String, dynamic> json) => _$MetricsFromJson(json);
}
