// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';

class CustomBackTitleButton extends StatelessWidget {
  CustomBackTitleButton({
    super.key,
    required this.onPressed,
    required this.toolbarTitle,
    this.color = Colors.white,
    this.size,
    this.padding,
    this.hasShadow = false,
  });

  late BuildContext context;

  final VoidCallback onPressed;
  final Color color;
  final double? size;
  final EdgeInsets? padding;
  final bool hasShadow;
  final String? toolbarTitle;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Padding(
      padding: padding ?? EdgeInsets.only(left: 5.w),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [getBackArrowIcon()],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: getHeaderTitle(context, toolbarTitle),
          ),
        ],
      ),
    );
  }

  GestureDetector getBackArrowIcon() {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        Icons.arrow_back_ios_outlined,
        color: color,
        size: size,
        shadows: hasShadow
            ? const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, .5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  blurStyle: BlurStyle.outer,
                  offset: Offset(0, 0),
                ),
              ]
            : null,
      ),
    );
  }

  Widget getHeaderTitle(BuildContext context, String? toolbarTitle) {
    return Text(
      toolbarTitle ?? '',
      textAlign: TextAlign.center,
      style: context.textTheme.bodyMedium?.copyWith(
        color: Colors.white,
      ),
    );
  }
}
