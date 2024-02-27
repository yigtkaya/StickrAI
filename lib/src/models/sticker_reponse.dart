// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stickerai/src/models/input.dart';
import 'package:stickerai/src/models/metrics.dart';
import 'package:stickerai/src/models/urls.dart';

part 'sticker_reponse.freezed.dart';
part 'sticker_reponse.g.dart';

@freezed
class StickerResponse with _$StickerResponse {
  const factory StickerResponse({
    @JsonKey(name: "completed_at") DateTime? completedAt,
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
    @JsonKey(name: "version") String? version,
  }) = _StickerResponse;

  factory StickerResponse.fromJson(Map<String, dynamic> json) => _$StickerResponseFromJson(json);
}
