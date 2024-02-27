// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'urls.freezed.dart';
part 'urls.g.dart';

@freezed
class Urls with _$Urls {
  const factory Urls({
    @JsonKey(name: "get") String? urlsGet,
    @JsonKey(name: "cancel") String? cancel,
  }) = _Urls;

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
}
