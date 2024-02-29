import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language russian = Language(
  id: 7,
  name: 'Russian',
  urlCode: 'ru',
  locale: Locale('ru'),
  currency: russianCurrency,
);

const Currency russianCurrency = Currency(
  code: 643,
  name: 'Russian Ruble',
  shortName: 'RUB',
  symbol: r'₽',
);
