import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/utils/hex_color.dart';
import 'package:stickerai/src/providers/theme_provider.dart';

class FormInputArea extends ConsumerWidget {
  const FormInputArea({
    super.key,
    required this.prefixTitle,
    this.hint,
    this.onChanged,
    this.borderRadius,
    this.onTap,
    this.controller,
    this.validator,
    this.hintHexColor,
    this.readOnly = false,
    this.inputFormatters,
    this.textStyle,
    this.prefixTextStyle,
    this.fillColor,
    this.isProfileInputBorder = false,
    this.isProfileDetailInputBorder = false,
    this.keyboardType,
    this.focusNode,
    this.textDirection,
    this.cursorColor = Colors.white,
    this.errBgColor,
  });

  final String prefixTitle;
  final String? hint;
  final Function(String?)? onChanged;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final HexColor? hintHexColor;
  final Color? errBgColor;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? textStyle;
  final TextStyle? prefixTextStyle;
  final Color? fillColor, cursorColor;
  final bool isProfileInputBorder, isProfileDetailInputBorder;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 350.w,
        color: fillColor ??
            HexColor(
              '#5A5F64',
            ).withOpacity(
              .5,
            ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: errBgColor,
                child: TextFormField(
                  key: key,
                  inputFormatters: inputFormatters,
                  focusNode: focusNode,
                  keyboardType: keyboardType,
                  validator: validator,
                  controller: controller,
                  readOnly: readOnly,
                  onTap: onTap,
                  textDirection: textDirection,
                  cursorColor: cursorColor,
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  onChanged: onChanged,
                  style: textStyle ??
                      context.textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 13.sp,
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: fillColor ??
                        HexColor(
                          '#5A5F64',
                        ).withOpacity(
                          .5,
                        ),
                    hintText: hint,
                    errorMaxLines: 1,
                    hintStyle: context.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      height: 1.4,
                      color: hintHexColor ??
                          HexColor(
                            '#90969E',
                          ),
                    ),
                    errorStyle: ThemeController.kErrorStyle(
                        // color: onboardingComponent?.properties?.errorMessageColor.toColorDefRed,
                        ),
                    focusedBorder: isProfileDetailInputBorder
                        ? underlineInputBorderForProfileDetail
                        : isProfileInputBorder
                            ? underlineInputBorderForProfile
                            : underlineInputBorder,
                    border: isProfileDetailInputBorder
                        ? underlineInputBorderForProfileDetail
                        : isProfileInputBorder
                            ? underlineInputBorderForProfile
                            : underlineInputBorder,
                    errorBorder: isProfileDetailInputBorder
                        ? underlineInputBorderForProfileDetail
                        : isProfileInputBorder
                            ? underlineInputBorderForProfile
                            : underlineInputBorder,
                    enabledBorder: isProfileDetailInputBorder
                        ? underlineInputBorderForProfileDetail
                        : isProfileInputBorder
                            ? underlineInputBorderForProfile
                            : underlineInputBorder,
                    disabledBorder: isProfileDetailInputBorder
                        ? underlineInputBorderForProfileDetail
                        : isProfileInputBorder
                            ? underlineInputBorderForProfile
                            : underlineInputBorder,
                    focusedErrorBorder: isProfileDetailInputBorder
                        ? underlineInputBorderForProfileDetail
                        : isProfileInputBorder
                            ? underlineInputBorderForProfile
                            : underlineInputBorder,
                    prefixIcon: Container(
                      padding: EdgeInsets.fromLTRB(
                        16.w,
                        16.h,
                        5.w,
                        16.h,
                      ),
                      child: Text(
                        prefixTitle,
                        style: prefixTextStyle ??
                            context.textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontSize: 13.sp,
                              height: 1.4,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  UnderlineInputBorder get underlineInputBorder => UnderlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.zero,
        borderSide: const BorderSide(
          width: 1,
          color: Colors.black,
        ),
      );

  UnderlineInputBorder get underlineInputBorderForProfileDetail => UnderlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.zero,
        borderSide: const BorderSide(
          width: .0,
          color: Colors.white,
        ),
      );

  UnderlineInputBorder get underlineInputBorderForProfile => UnderlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.zero,
        borderSide: BorderSide(
          width: .5,
          color: HexColor(
            '#DFE1EA',
          ),
        ),
      );
}
