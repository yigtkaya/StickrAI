import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/providers/theme_provider.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/utils/formatters.dart';
import 'package:stickerai/src/shared/utils/hex_color.dart';
import 'package:stickerai/src/shared/utils/validators.dart';

class OtpArea extends ConsumerWidget {
  final String? hint;
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const OtpArea({
    super.key,
    required this.controller,
    this.onChanged,
    this.hint,
    this.validator,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 350.w,
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.white,
        showCursor: true,
        onChanged: onChanged,
        validator: validator ?? phoneOTPValidator,
        maxLines: 1,
        expands: false,
        decoration: InputDecoration(
          hintText: hint,
          errorStyle: ThemeController.kErrorStyle(
              //   color: onboardingComponent?.properties?.errorMessageColor.toColorDefRed,
              ),
          hintStyle: TextStyle(
            color: HexColor('#5A5F64'),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 14.h,
          ),
          prefix: 20.rW,
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          disabledBorder: outlineInputBorder,
          focusedErrorBorder: outlineInputBorder,
        ),
        style: context.textTheme.bodyMedium!.copyWith(color: Colors.white),
        keyboardType: TextInputType.phone,
        inputFormatters: otpFormatter(),
      ),
    );
  }

  OutlineInputBorder get outlineInputBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          width: .5,
          color: Colors.white,
        ),
      );
}
