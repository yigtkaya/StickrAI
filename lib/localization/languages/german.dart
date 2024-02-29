import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language german = Language(
  id: 3,
  name: 'German',
  urlCode: 'de',
  locale: Locale('de'),
  currency: germanCurrency,
);

const Currency germanCurrency = Currency(
  code: 978,
  name: 'Euro',
  shortName: 'EUR',
  symbol: r'€',
);
