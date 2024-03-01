// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StickerResponseImpl _$$StickerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StickerResponseImpl(
      error: json['error'],
      output:
          (json['output'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['succes'] as bool?,
    );

Map<String, dynamic> _$$StickerResponseImplToJson(
        _$StickerResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'output': instance.output,
      'succes': instance.status,
    };
