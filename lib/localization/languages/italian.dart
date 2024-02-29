import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language italian = Language(
  id: 4,
  name: 'German',
  urlCode: 'it',
  locale: Locale('it'),
  currency: italianCurrency,
);

const Currency italianCurrency = Currency(
  code: 978,
  name: 'Euro',
  shortName: 'EUR',
  symbol: r'€',
);
