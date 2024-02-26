// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  CustomCircularProgressIndicator({
    super.key,
    this.title,
    this.width,
    this.height,
    this.strokeWidth,
    this.backgroundColor,
    this.valueColor,
    this.titleColor = Colors.white,
  });

  final String? title;
  final double? width, height, strokeWidth;
  final Color? backgroundColor, valueColor, titleColor;

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return title == null ? _buildCircularProgress : _buildTitleAndProgress;
  }

  Widget get _buildTitleAndProgress => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildCustomCircularProgress,
            20.rH,
            _buildTitle,
          ],
        ),
      );

  Widget get _buildTitle => Text(
        title ?? '',
        style: context.textTheme.headlineSmall!.copyWith(
          color: titleColor,
          height: 1,
          fontSize: 10.sp,
          fontWeight: FontWeight.w800,
          letterSpacing: 1.2,
        ),
        textAlign: TextAlign.center,
      );

  Widget get _buildCircularProgress => Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: _buildCustomCircularProgress,
      );

  Widget get _buildCustomCircularProgress => CircularProgressIndicator(
        strokeWidth: strokeWidth ?? 4.0,
        valueColor: AlwaysStoppedAnimation<Color>(valueColor ?? Colors.white),
        backgroundColor: backgroundColor ?? Colors.grey,
      );
}
