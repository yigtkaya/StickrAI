import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stickerai/store_version_check/store_info.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.error() = AppStateError;
  const factory AppState.loading() = AppStateLoading;
  const factory AppState.loaded() = AppStateLoaded;
  const factory AppState.needsUpdate({
    required StoreInfo storeInfo,
  }) = AppStateNeedsUpdate;
  const factory AppState.jailbroken() = AppStateJailbroken;
}
