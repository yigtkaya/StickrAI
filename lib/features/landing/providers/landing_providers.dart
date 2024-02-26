import 'package:riverpod_annotation/riverpod_annotation.dart';

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
