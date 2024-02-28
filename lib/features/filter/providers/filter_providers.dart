import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_providers.g.dart';

@riverpod
class IsUpscaleEnabled extends _$IsUpscaleEnabled {
  @override
  bool build() {
    return false;
  }

  void changeUpscale() {
    state = !state;
  }
}
