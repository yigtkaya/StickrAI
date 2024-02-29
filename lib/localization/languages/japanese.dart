import 'package:flutter/material.dart';
import 'package:stickerai/localization/models/language.dart';

const Language japanese = Language(
  id: 5,
  name: 'Japanese',
  urlCode: 'ja',
  locale: Locale('ja'),
  currency: japaneseCurrency,
);

const Currency japaneseCurrency = Currency(
  code: 392,
  name: 'Japanese Yen',
  shortName: 'JPY',
  symbol: '¥',
);
