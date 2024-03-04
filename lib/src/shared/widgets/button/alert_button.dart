import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({
    super.key,
    required this.text,
    required this.onTap,
    this.bgColor = Colors.black,
    this.border,
    this.textColor = Colors.white,
  });

  final String text;
  final VoidCallback onTap;

  final Color bgColor;
  final BoxBorder? border;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(114.0),
        border: border,
      ),
      child: TextButton(
        onPressed: onTap,
        child: SizedBox(
          width: 270.0,
          child: Text(
            text,
            style: context.textTheme.bodyMedium!.copyWith(
              fontSize: 13.sp,
              color: textColor,
              fontWeight: FontWeight.w500,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
