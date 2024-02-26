import 'package:flutter/material.dart';
import 'package:stickerai/src/shared/constants/asset_constants.dart';
import 'package:stickerai/src/shared/widgets/button/asset_icon.dart';


class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    super.key,
    this.onPress,
  });

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return AssetIcon(
      iconName: AssetConstants.icons.chevronLeft,
      onPress: onPress,
    );
  }
}
