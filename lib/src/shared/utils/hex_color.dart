import 'package:flutter/material.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/environment/env_extensions.dart';
import 'package:stickerai/src/shared/extensions/string_extension.dart';

class HexColor extends Color {
  static int _getColorFromHex(String? hexColor) {
    if (hexColor != null) {
      try {
        hexColor = hexColor.toUpperCase().replaceAll("#", "");
        if (hexColor.length == 6) {
          hexColor = "FF$hexColor";
        }
        return int.parse(hexColor, radix: 16);
      } catch (_) {
        return int.parse(env.isDev ? 'FFFF0000' : 'FF000000', radix: 16);
      }
    } else {
      return int.parse(env.isDev ? 'FFFF0000' : 'FF000000', radix: 16);
    }
  }

  HexColor(final String? hexColor) : super(_getColorFromHex(hexColor));
}

/// this is mainly used for json parsers
Color? hexToColor(String? hexColor) {
  if (hexColor != null) {
    try {
      hexColor = hexColor.toUpperCase().replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF$hexColor";
      }
      return Color(int.parse(hexColor, radix: 16));
    } catch (_) {
      return Color(int.parse(env.isDev ? 'FFFF0000' : 'FF000000', radix: 16));
    }
  } else {
    return Color(int.parse(env.isDev ? 'FFFF0000' : 'FF000000', radix: 16));
  }
}

/// this is mainly used for json parsers
List<List<Color>>? sostToColorList(String? sostString) {
  if (sostString.isNullOrEmpty) {
    return null;
  }
  //"{[#5C8281,#94A07F,#DAD5A3,1],[#35235D,#DB2464,#CB2402,1]}"
  // remove { , }
  sostString = sostString!.replaceAll('{', '').replaceAll('}', '').replaceAll(' ', '');

  // split ],[ to get lists
  final firstSplit = sostString.split('],[');

  final gradientColorList = <List<Color>>[];
  for (final sost in firstSplit) {
    // remove unwanted [ ] and split by ,
    final secondSplit = sost.replaceAll('[', '').replaceAll(']', '').split(',');
    final colorList = <Color>[];
    for (final colorString in secondSplit) {
      final color = hexToColor2(colorString);
      if (color != null) {
        colorList.add(color);
      }
    }
    gradientColorList.add(colorList);
  }

  return gradientColorList;
}

// returns real null
Color? hexToColor2(String hexColor) {
  try {
    if (!hexColor.contains('#')) {
      // if no # then color is not hex text
      return null;
    }
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  } catch (_) {
    return null;
  }
}
