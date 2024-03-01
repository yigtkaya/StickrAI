// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputImpl _$$InputImplFromJson(Map<String, dynamic> json) => _$InputImpl(
      steps: json['steps'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      prompt: json['prompt'] as String?,
      upscale: json['upscale'] as bool?,
      upscaleSteps: json['upscale_steps'] as int?,
      negativePrompt: json['negative_prompt'] as String?,
      seed: json['seed'] as int?,
    );

Map<String, dynamic> _$$InputImplToJson(_$InputImpl instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'width': instance.width,
      'height': instance.height,
      'prompt': instance.prompt,
      'upscale': instance.upscale,
      'upscale_steps': instance.upscaleSteps,
      'negative_prompt': instance.negativePrompt,
      'seed': instance.seed,
    };
