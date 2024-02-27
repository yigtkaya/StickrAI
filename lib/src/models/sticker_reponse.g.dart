// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StickerResponseImpl _$$StickerResponseImplFromJson(Map<String, dynamic> json) => _$StickerResponseImpl(
      completedAt: json['completed_at'] == null ? null : DateTime.parse(json['completed_at'] as String),
      createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
      error: json['error'],
      id: json['id'] as String?,
      input: json['input'] == null ? null : Input.fromJson(json['input'] as Map<String, dynamic>),
      logs: json['logs'] as String?,
      metrics: json['metrics'] == null ? null : Metrics.fromJson(json['metrics'] as Map<String, dynamic>),
      output: (json['output'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startedAt: json['started_at'] == null ? null : DateTime.parse(json['started_at'] as String),
      status: json['status'] as String?,
      urls: json['urls'] == null ? null : Urls.fromJson(json['urls'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$StickerResponseImplToJson(_$StickerResponseImpl instance) => <String, dynamic>{
      'completed_at': instance.completedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'error': instance.error,
      'id': instance.id,
      'input': instance.input,
      'logs': instance.logs,
      'metrics': instance.metrics,
      'output': instance.output,
      'started_at': instance.startedAt?.toIso8601String(),
      'status': instance.status,
      'urls': instance.urls,
      'version': instance.version,
    };
