import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:stickerai/src/providers/theme_provider.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/utils/hex_color.dart';

class CustomTextField extends ConsumerWidget {
  final String? hint;
  final Function(String)? onChanged;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.hint,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: const GradientBoxBorder(
          width: 2,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orangeAccent, Color.fromARGB(255, 236, 104, 104), Colors.purpleAccent],
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: TextFormField(
          controller: controller,
          cursorColor: Colors.white,
          showCursor: true,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 14.h,
            ),
            prefix: 20.rW,
            hintText: hint,
            errorStyle: ThemeController.kErrorStyle(
                //  color: onboardingComponent?.properties?.errorMessageColor.toColorDefRed,
                ),
            hintStyle: TextStyle(
              color: HexColor('#5A5F64'),
              fontSize: 18.sp,
            ),
            border: InputBorder.none,
          ),
          enableSuggestions: true,
          style: TextStyle(
            color: AppColors.neutralWhite,
            fontSize: 16.sp,
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}
