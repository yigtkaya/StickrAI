import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stickerai/store_version_check/store_info.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.error() = AppStateError;
  const factory AppState.loading() = _AppStateLoading;
  const factory AppState.notAuthorized() = _AppStateNotAuthorized;
  const factory AppState.needsUpdate({
    required StoreInfo storeInfo,
  }) = AppStateNeedsUpdate;
  const factory AppState.jailbroken() = AppStateJailbroken;

  const factory AppState.authorized({
    required String token,
    required String refreshToken,
    required String refreshTokenExpiration,
    required String userId,
  }) = AppStateAuthorized;
}
