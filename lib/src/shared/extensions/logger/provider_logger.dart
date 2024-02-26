import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stickerai/src/shared/extensions/logger/logger.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.d('[${provider.name ?? provider.runtimeType}] value: $newValue');
  }
}
