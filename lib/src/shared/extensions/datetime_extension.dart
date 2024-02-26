extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime? other) {
    return other == null ? false : year == other.year && month == other.month && day == other.day;
  }

  bool isAfterOnlyDate(DateTime other) {
    final thisDate = copyWith(year: year, month: month, day: day);
    final otherDate = copyWith(year: other.year, month: other.month, day: other.day);
    return thisDate.isAfter(otherDate);
  }

  int compareToOnlyDate(DateTime other) {
    final thisDate = copyWith(year: year, month: month, day: day);
    final otherDate = copyWith(year: other.year, month: other.month, day: other.day);
    return thisDate.compareTo(otherDate);
  }

  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }

  String formattedDateTimeWithoutTimeZone() {
    return '${_twoDigits(day)}.${_twoDigits(month)}.$year '
        '${_twoDigits(hour)}:${_twoDigits(minute)}';
  }

  String formattedDateTime() {
    return '${_twoDigits(day)}.${_twoDigits(month)}.$year';
  }

  String _twoDigits(int n) {
    if (n >= 10) {
      return '$n';
    }
    return '0$n';
  }

  String formatUtils() {
    String f_weekDay = '';
    String f_day = '';
    String f_month = '';

    if (day < 10) {
      f_day = '0$day';
    } else {
      f_day = day.toString();
    }

    if (month < 10) {
      f_month = '0$month';
    } else {
      f_month = month.toString();
    }

    switch (weekday) {
      case 1:
        f_weekDay = 'Sunday';
        break;
      case 2:
        f_weekDay = 'Monday';
        break;
      case 3:
        f_weekDay = 'Tuesday';
        break;
      case 4:
        f_weekDay = 'Wednesday';
        break;
      case 5:
        f_weekDay = 'Thursday';
        break;
      case 6:
        f_weekDay = 'Friday';
        break;
      case 7:
        f_weekDay = 'Saturday';
        break;
    }

    return '$f_weekDay, $f_day / $f_month / $year';
  }
}
