import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language french = Language(
  id: 2,
  name: 'German',
  urlCode: 'fr',
  locale: Locale('fr'),
  currency: frenchCurrency,
);

const Currency frenchCurrency = Currency(
  code: 978,
  name: 'Euro',
  shortName: 'EUR',
  symbol: r'€',
);
