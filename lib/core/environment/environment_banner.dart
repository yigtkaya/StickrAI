import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/environment/environment.dart';

@immutable
class EnvironmentBanner extends StatelessWidget {
  const EnvironmentBanner({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (env is ProductionEnvironment && !kDebugMode) return child;
    return _buildBanner(context);
  }

  Widget _buildBanner(BuildContext context) {
    return Banner(
      location: BannerLocation.topStart,
      message: env.bannerName,
      color: env.bannerColor,
      layoutDirection: TextDirection.ltr,
      textDirection: TextDirection.ltr,
      child: child,
    );
  }
}
