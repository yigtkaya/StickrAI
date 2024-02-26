import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/shared/utils/hex_color.dart';

final themeProvider = ChangeNotifierProvider<ThemeController>((ref) {
  ref.watch(languageProvider);
  return ThemeController();
});

class ThemeController extends ChangeNotifier {
  ThemeController() {
    _init();
  }

  static const _fontFamilyMontserrat = 'Montserrat';

//  final _fontFamilySFMono = 'SFMono';

  /// Colors
  final Color _kPrimaryColor = const Color(0xFFE7F0DF);

  /// ThemeData
  late ThemeData _themeData;

  ThemeData get themeData => _themeData;

  /// ThemeMode
  ThemeMode themeMode = ThemeMode.light;

  void changeThemeMode(ThemeMode themeMode) {
    this.themeMode = themeMode;
    notifyListeners();
  }

  final _kAppBarTheme = const AppBarTheme(color: Colors.white);

  void _init() {
    _themeData = ThemeData(
      primaryColor: _kPrimaryColor,
      appBarTheme: _kAppBarTheme,
      textTheme: TextTheme(
        displayLarge: _kHeadline1,
        displayMedium: _kHeadline2,
        displaySmall: _kHeadline3,
        headlineMedium: _kHeadline4,
        headlineSmall: _kHeadline5,
        titleLarge: _kHeadline6,
        bodyLarge: _kBodyText1,
        bodyMedium: _kBodyText2,
      ),
      // ignore: deprecated_member_use
      errorColor: HexColor("#F66464"),
    );
    notifyListeners();
  }

  TextStyle get _kHeadline1 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 48.sp,
        color: Colors.black,
        fontFamily: _fontFamilyMontserrat,
      );

  TextStyle get _kHeadline2 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 8.sp,
        color: Colors.black,
        height: 1.1,
        fontFamily: _fontFamilyMontserrat,
      );

  TextStyle get _kHeadline3 => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 20.sp,
        color: Colors.black,
        fontFamily: _fontFamilyMontserrat,
      );

  TextStyle get _kHeadline4 => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 18.sp,
        color: Colors.black,
        fontFamily: _fontFamilyMontserrat,
      );

  TextStyle get _kHeadline5 => TextStyle(
        fontSize: 12.sp,
        fontFamily: _fontFamilyMontserrat,
        color: Colors.black,
        letterSpacing: 3,
      );

  TextStyle get _kHeadline6 => TextStyle(
        fontSize: 10.sp,
        fontFamily: _fontFamilyMontserrat,
        color: Colors.black,
      );

  TextStyle get _kBodyText1 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 17.sp,
        fontFamily: _fontFamilyMontserrat,
        color: Colors.black,
      );

  TextStyle get _kBodyText2 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15.sp,
        fontFamily: _fontFamilyMontserrat,
        color: Colors.black,
      );

  // updating this to static to remove depend [ref]
  static TextStyle kErrorStyle({Color? color}) => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: color ?? HexColor("#F66464"),
        height: 1.4,
        fontFamily: _fontFamilyMontserrat,
      );
}

double fontSizeByLang({required double fontSize}) {
  return fontSize.sp;
}
