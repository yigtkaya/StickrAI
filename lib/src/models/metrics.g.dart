// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetricsImpl _$$MetricsImplFromJson(Map<String, dynamic> json) => _$MetricsImpl(
      predictTime: (json['predict_time'] as num?)?.toDouble(),
      totalTime: (json['total_time'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MetricsImplToJson(_$MetricsImpl instance) => <String, dynamic>{
      'predict_time': instance.predictTime,
      'total_time': instance.totalTime,
    };
