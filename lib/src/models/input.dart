// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input.freezed.dart';
part 'input.g.dart';

@freezed
class Input with _$Input {
  const factory Input({
    @JsonKey(name: "steps") int? steps,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "prompt") String? prompt,
    @JsonKey(name: "upscale") bool? upscale,
    @JsonKey(name: "upscale_steps") int? upscaleSteps,
    @JsonKey(name: "negative_prompt") String? negativePrompt,
  }) = _Input;

  factory Input.fromJson(Map<String, dynamic> json) => _$InputFromJson(json);
}
