import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stickerai/features/landing/repository/generator_repository.dart';
import 'package:stickerai/src/models/input.dart';
import 'package:stickerai/src/models/sticker_reponse.dart';

part 'landing_providers.g.dart';

// @riverpod
// class SelectedDates extends _$SelectedDates {
//   @override
//   DateTimeRange build() {
//     return DateTimeRange(
//       start: DateTime.now().subtract(
//         const Duration(days: 5),
//       ),
//       end: DateTime.now(),
//     );
//   }

//   void set(DateTimeRange value) {
//     state = value;
//   }
// }

@riverpod
class PromptText extends _$PromptText {
  @override
  String build() {
    return "";
  }

  void set(String value) {
    state = value;
  }
}

@riverpod
class NegativePromptText extends _$NegativePromptText {
  @override
  String build() {
    return "";
  }

  void set(String value) {
    state = value;
  }
}

@riverpod
class IsLoading extends _$IsLoading {
  @override
  bool build() {
    return false;
  }

  void changeLoading() {
    state = !state;
  }
}

@riverpod
Future<StickerResponse> generateSticker(GenerateStickerRef ref, String prompt) async {
  return ref.watch(generatorRepositoryProvider).generateSticker(
        Input(
          prompt: prompt,
          negativePrompt: "",
          steps: 20,
          width: 1024,
          height: 1024,
          upscale: true,
          upscaleSteps: 10,
        ),
      );
}

@riverpod
Future<StickerResponse> generateFilteredSticker(GenerateFilteredStickerRef ref, Input input) async {
  return ref.watch(generatorRepositoryProvider).generateSticker(
        input,
      );
}
