import 'package:stickerai/src/shared/extensions/list_extension.dart';

extension StringExtension on String {
  ///////////////////////////////////
  //! Style extensions
  String get italic => '<i>$this</i>';

  String get bold => '<b>$this</b>';

  String get underline => '<u>$this</u>';

  String get toCapitalized => length > 0 ? '${this[0].toUpper}${substring(1)}' : '';

  String get toTitleCase => replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.toCapitalized).join(" ");
  // write an extension for adding a space between camelCase words
  String get splitCamelCase => replaceAllMapped(
        RegExp(r'(\w+)([A-Z])'),
        (match) => '${match[1]} ${match[2]}',
      );

  // splitMapJoin(
  //       RegExp(r'\w+'),
  //       onMatch: (m) {
  //         return '${m.group(0)}'.substring(0, 1).toUpperCase() + '${m.group(0)}'.substring(1).toLowerCase();
  //       },
  //       onNonMatch: (n) {
  //         return ' ';
  //       },
  //     ).trim();

  String get toUpper {
    return toUpperTurkish.toUpperCase();
  }

  String get toLower {
    return toUpperTurkish.toLowerCase();
  }

  String get toUpperTurkish => replaceAll('i', 'İ')
      .replaceAll('ö', 'Ö')
      .replaceAll('ü', 'Ü')
      .replaceAll('ş', 'Ş')
      .replaceAll('ç', 'Ç')
      .replaceAll('ğ', 'Ğ');

  String get toLowerTurkish => replaceAll('İ', 'i')
      .replaceAll('Ö', 'ö')
      .replaceAll('Ü', 'ü')
      .replaceAll('Ş', 'ş')
      .replaceAll('Ç', 'ç')
      .replaceAll('Ğ', 'ğ');

  String get replaceEnglishNumber => replaceAll('٠', '0')
      .replaceAll('١', '1')
      .replaceAll('٢', '2')
      .replaceAll('٣', '3')
      .replaceAll('٤', '4')
      .replaceAll('٥', '5')
      .replaceAll('٦', '6')
      .replaceAll('٧', '7')
      .replaceAll('٨', '8')
      .replaceAll('٩', '9');

  String dividedString({
    String divider = ",", //DEFAULT DIVIDER ","
    int step = 3,
  }) {
    var src = this;
    // end ??= ' ${AppConfig.appCurrency.symbol}';
    var newStr = '';
    final str = src.split(".");
    if (str.isNotEmpty) {
      src = str[0];
    }
    for (var i = src.length; i >= 0; i -= step) {
      var subString = '';
      if (i > step) {
        subString += divider;
      }
      subString += src.substring(i < step ? 0 : i - step, i);
      newStr = subString + newStr;
    }

    return newStr;
  }

  // "$RCAnonymousID:90bffec06f5d48fc9e6367caaed0f069"

  String get getAnonymousID {
    final split = this.split(':');
    if (split.length > 1) {
      return split[1];
    }
    return '';
  }
}

extension NullStringExtension on String? {
  bool get isNullOrEmpty => !(this != null) || this!.isEmpty;

  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;

  String addDot({required int maxLength, bool addNewLine = false, bool useTitleCase = true}) {
    if (this == null) {
      return '';
    }
    if (this!.length > maxLength) {
      if (useTitleCase) {
        return '${this!.substring(0, maxLength).toTitleCase}...';
      } else {
        return '${this!.substring(0, maxLength)}...';
      }
    } else {
      final v = '${this!.toTitleCase}${addNewLine ? "\n" : ''}';
      return v;
    }
  }
}

extension ListStringExtension on List<String?>? {
  String joinAndAddDot({required int maxLength, bool addNewLine = false}) {
    if (isNullOrEmpty) {
      return '';
    }
    final st = this!.join(', ');
    if (st.length > maxLength) {
      return '${st.substring(0, maxLength).toTitleCase}...';
    } else {
      return '${st.toTitleCase}${addNewLine ? "\n" : ''}';
    }
  }
}
