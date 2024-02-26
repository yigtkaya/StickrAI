import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language turkish = Language(
  id: 0,
  name: 'Türkçe',
  urlCode: 'tr',
  locale: Locale('tr'),
  currency: turkishCurrency,
);

const Currency turkishCurrency = Currency(
  code: 784,
  name: 'Turkish Lira',
  shortName: 'TL',
  symbol: '₺',
);
