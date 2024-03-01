import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class PurhcaseHandler {
  static Future<List<Offering>> getOffers() async {
    try {
      final offerings = await Purchases.getOfferings();
      final current = offerings.current;

      return current == null ? [] : [current];
    } on PlatformException catch (e) {
      log('PurhcaseHandler: getOffers => ${e.message}');
      return [];
    }
  }

  static Future<Offerings?> fetchOffers() async {
    await Purchases.getCustomerInfo();
    Offerings? offerings;
    try {
      offerings = await Purchases.getOfferings();
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
    return offerings;
  }

  static Future<List<Package>?> loadPackages() async {
    try {
      //fetchOffers -1
      final result = await fetchOffers();
      if (result == null) return [];

      return result.current!.availablePackages;
    } catch (e) {
      return [];
    }
  }
}
