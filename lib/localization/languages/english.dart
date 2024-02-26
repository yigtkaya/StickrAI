import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language english = Language(
  id: 1,
  name: 'English',
  urlCode: 'en',
  locale: Locale('en'),
  currency: englishCurrency,
);

const Currency englishCurrency = Currency(
  code: 840,
  name: 'US Dollar',
  shortName: 'USD',
  symbol: r'$',
);
