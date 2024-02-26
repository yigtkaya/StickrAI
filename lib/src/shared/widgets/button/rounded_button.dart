import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/providers/theme_provider.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/utils/hex_color.dart';
import 'package:stickerai/src/shared/widgets/circular_progress/custom_circular_progress.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
    this.bgColor,
    this.borderRadius,
    this.textStyle,
    this.elevation,
    this.borderSide = BorderSide.none,
    this.textColor,
    this.isLoading = false,
    this.isSignIn,
    this.strokeWidth,
    this.isUploadReceipt = false,
  });

  final double? width, height, borderRadius, elevation, strokeWidth;
  final Color? bgColor, textColor;
  final String text;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final BorderSide borderSide;
  final bool isLoading;
  final bool isUploadReceipt;
  final bool? isSignIn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 350.w,
      height: height ?? 50.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onTap,
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0,
          backgroundColor: bgColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            side: borderSide,
            borderRadius: BorderRadius.circular(borderRadius ?? 114),
          ),
          disabledBackgroundColor: HexColor('#5A5F64').withOpacity(.5),
        ),
        child: isLoading
            ? CustomCircularProgressIndicator(
                width: 22.w,
                height: 22.h,
                strokeWidth: strokeWidth,
              )
            : Text(
                text,
                style: textStyle ??
                    context.textTheme.bodyMedium!.copyWith(
                      color: textColor,
                      height: 1.4,
                      fontWeight: FontWeight.w500,
                      fontSize: fontSizeByLang(
                        fontSize: 14,
                      ),
                    ),
              ),
      ),
    );
  }
}
