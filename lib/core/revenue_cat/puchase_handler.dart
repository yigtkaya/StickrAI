import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class PurhcaseHandler {
  static Future<List<Offering>> getOffers() async {
    try {
      final offerings = await Purchases.getOfferings();
      final current = offerings.current;

      return current == null ? [] : [current];
    } on PlatformException catch (e) {
      print('PurhcaseHandler: getOffers => ${e.message}');
      return [];
    }
  }
}
