import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'paywall_repository.g.dart';

@riverpod
PurhcaseRepository purhcaseRepository(PurhcaseRepositoryRef ref) => PurhcaseRepository();

class PurhcaseRepository {
  Future<List<Offering>> getOffers() async {
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
