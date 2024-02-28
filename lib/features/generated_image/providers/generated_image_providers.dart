import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated_image_providers.g.dart';

@riverpod
class SelectedSticker extends _$SelectedSticker {
  @override
  int build() {
    return 0;
  }

  void set(int value) {
    state = value;
  }
}

@riverpod
class Stickers extends _$Stickers {
  @override
  List<String> build() {
    return [];
  }

  void set(List<String> value) {
    state = value;
  }
}
