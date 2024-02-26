// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
//import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/providers/theme_provider.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/utils/hex_color.dart';

class PhoneArea extends ConsumerWidget {
  final String? hint;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  //final CountryWithPhoneCode country;
  final Widget? prefix;

  const PhoneArea({
    super.key,
    required this.controller,
    //required this.country,
    this.onTap,
    this.onChanged,
    this.hint,
    this.validator,
    this.prefix,
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
        validator: validator,
        maxLines: 1,
        expands: false,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: hint ?? "tr.mobilePhone",
          hintTextDirection: TextDirection.ltr,
          hintStyle: TextStyle(
            color: HexColor('#5A5F64'),
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
            height: 1.4,
            fontFamily: 'Montserrat',
          ),
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          disabledBorder: outlineInputBorder,
          focusedErrorBorder: outlineInputBorder,
          contentPadding: EdgeInsets.symmetric(
            vertical: 14.h,
            // horizontal: isArabic ? 14.h : 0
          ),
          // EdgeInsets.zero,
          errorStyle: ThemeController.kErrorStyle(
              //color: onboardingComponent?.properties?.errorMessageColor.toColorDefRed,
              ),
          prefixIcon: _buildIcon(context),
        ),
        style: context.textTheme.bodyMedium!.copyWith(color: Colors.white, height: 1.4),
        keyboardType: TextInputType.phone,
        smartDashesType: SmartDashesType.enabled,
        smartQuotesType: SmartQuotesType.enabled,
        enableSuggestions: true,
        autofillHints: const [
          AutofillHints.telephoneNumber,
        ],
        // inputFormatters: phoneAreaFormatter(
        //   country: country,
        // ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      margin: EdgeInsets.only(right: 20.w),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide.none,
          left: BorderSide.none,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "", //'+${country.phoneCode.toString()}',
              textDirection: TextDirection.ltr,
              style: context.textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontSize: 15.sp,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
              size: 23.sp,
            ),
          ],
        ),
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
