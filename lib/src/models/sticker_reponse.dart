// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sticker_reponse.freezed.dart';
part 'sticker_reponse.g.dart';

@freezed
class StickerResponse with _$StickerResponse {
  const factory StickerResponse({
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "output") List<String>? output,
    @JsonKey(name: "succes") bool? status,
  }) = _StickerResponse;

  factory StickerResponse.fromJson(Map<String, dynamic> json) => _$StickerResponseFromJson(json);
}
