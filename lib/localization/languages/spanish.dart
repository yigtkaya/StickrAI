import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language spanish = Language(
  id: 6,
  name: 'German',
  urlCode: 'es',
  locale: Locale('es'),
  currency: spanishCurrency,
);

const Currency spanishCurrency = Currency(
  code: 978,
  name: 'Euro',
  shortName: 'EUR',
  symbol: r'€',
);
