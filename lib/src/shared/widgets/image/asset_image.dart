import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssetsImage extends StatelessWidget {
  const AssetsImage({
    super.key,
    required this.imgPath,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
    this.borderRadius,
    this.alignment,
    this.matchTextDirection,
  });

  final String imgPath;
  final double? height;
  final double? width;
  final BoxFit fit;
  final Color? color;
  final BorderRadius? borderRadius;
  final Alignment? alignment;
  final bool? matchTextDirection;

  @override
  Widget build(BuildContext context) => (imgPath.contains('.svg'))
      ? SvgPicture.asset(
          imgPath,
          width: width,
          height: height,
          fit: fit,
          colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
          matchTextDirection: matchTextDirection ?? false,
        )
      : Image.asset(
          imgPath,
          width: width,
          height: height,
          fit: fit,
          color: color,
        );
}
