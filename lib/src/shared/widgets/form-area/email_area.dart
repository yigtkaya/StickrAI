import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/providers/theme_provider.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/utils/formatters.dart';
import 'package:stickerai/src/shared/utils/hex_color.dart';
import 'package:stickerai/src/shared/utils/validators.dart';

class EmailArea extends ConsumerWidget {
  final String? hint;
  final Function(String)? onChanged;
  final TextEditingController controller;

  const EmailArea({
    super.key,
    required this.controller,
    this.onChanged,
    this.hint,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final onboardingComponent = ref.watch(onboardingComponentProvider);
    return SizedBox(
      width: 350.w,
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.white,
        showCursor: true,
        maxLines: 1,
        inputFormatters: emailFormatter(),
        onChanged: onChanged,
        validator: emailValidator,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 14.h,
          ),
          prefix: 20.rW,
          hintText: hint ?? "tr.emailAddress",
          errorStyle: ThemeController.kErrorStyle(
              //  color: onboardingComponent?.properties?.errorMessageColor.toColorDefRed,
              ),
          hintStyle: TextStyle(
            color: HexColor('#5A5F64'),
          ),
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          disabledBorder: outlineInputBorder,
          focusedErrorBorder: outlineInputBorder,
        ),
        enableSuggestions: true,
        autofillHints: const [
          AutofillHints.email,
        ],
        style: context.textTheme.bodyMedium!.copyWith(color: Colors.white),
        keyboardType: TextInputType.emailAddress,
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
