import 'package:flutter_riverpod/flutter_riverpod.dart';

/// to update this use global function [updatedToken]
/// be careful whenever this provider updates it will trigger dio to be updated
final bearerTokenProvider = StateProvider((ref) => '');

void updatedToken(
  Ref ref, {
  required String accessToken,
  required String refreshToken,
  required String refreshTokenExpiration,
  required String userId,
}) {
  // ref.read(bearerTokenProvider.notifier).state = accessToken;
  // hiveStorage.writeString(key: StorageKey.authToken, value: accessToken);
  // hiveStorage.writeString(key: StorageKey.refreshToken, value: refreshToken);
  // hiveStorage.writeString(key: StorageKey.refreshTokenExpiration, value: refreshTokenExpiration);
  // hiveStorage.writeString(key: StorageKey.userId, value: userId);
}
