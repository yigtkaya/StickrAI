import 'package:purchases_flutter/models/offering_wrapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stickerai/features/paywall/repository/paywall_repository.dart';

part 'paywall_provider.g.dart';

@riverpod
Future<List<Offering>> fetchOffers(FetchOffersRef ref) async {
  return ref.watch(purhcaseRepositoryProvider).getOffers();
}
