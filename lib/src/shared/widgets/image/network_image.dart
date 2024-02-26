import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stickerai/src/shared/widgets/image/asset_image.dart';

///Network images
/// it uses cached network image in it base images
/// however for svg network images we are using flutter svg
class NetworkImage extends StatelessWidget {
  const NetworkImage({
    super.key,
    required this.imgUrl,
    this.placeholder = '',
    this.fit = BoxFit.cover,
    this.height,
    this.width,
    this.alignment,
    this.scale,
    this.loadingBuilder,
  });
  final String imgUrl;
  final double? height;
  final double? width;
  final String placeholder;
  final BoxFit fit;
  final Alignment? alignment;
  final double? scale;
  final Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder;

  @override
  Widget build(BuildContext context) {
    try {
      return imgUrl.isEmpty
          ? SizedBox(
              height: height,
              width: width,
            )
          : (imgUrl.contains('.svg'))
              ? SvgPicture.network(
                  imgUrl,
                  width: width,
                  height: height,
                  fit: fit,
                )
              : CachedNetworkImage(
                  imageUrl: imgUrl,
                  errorWidget: (c, e, s) => (placeholder.isEmpty)
                      ? const SizedBox.shrink()
                      : AssetsImage(
                          imgPath: placeholder,
                          height: height,
                          width: width,
                          fit: fit,
                        ),
                  placeholder: (c, e) => (placeholder.isEmpty)
                      ? const SizedBox.shrink()
                      : AssetsImage(
                          imgPath: placeholder,
                          height: height,
                          width: width,
                          fit: fit,
                        ),
                  fadeOutDuration: const Duration(milliseconds: 100),
                  fadeInDuration: const Duration(milliseconds: 200),
                  height: height,
                  width: width,
                  fit: fit,
                );
    } catch (e) {
      return const SizedBox.shrink();
    }
  }
}
