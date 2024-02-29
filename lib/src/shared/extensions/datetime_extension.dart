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
    var fWeekday = '';
    var fDay = '';
    var fMonth = '';

    if (day < 10) {
      fDay = '0$day';
    } else {
      fDay = day.toString();
    }

    if (month < 10) {
      fMonth = '0$month';
    } else {
      fMonth = month.toString();
    }

    switch (weekday) {
      case 1:
        fWeekday = 'Sunday';
        break;
      case 2:
        fWeekday = 'Monday';
        break;
      case 3:
        fWeekday = 'Tuesday';
        break;
      case 4:
        fWeekday = 'Wednesday';
        break;
      case 5:
        fWeekday = 'Thursday';
        break;
      case 6:
        fWeekday = 'Friday';
        break;
      case 7:
        fWeekday = 'Saturday';
        break;
    }

    return '$fWeekday, $fDay / $fMonth / $year';
  }
}
