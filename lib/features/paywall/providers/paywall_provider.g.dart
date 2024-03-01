// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paywall_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchOffersHash() => r'a422381f7c44cf531da63ac79b3dc42e77bd674d';

/// See also [fetchOffers].
@ProviderFor(fetchOffers)
final fetchOffersProvider = AutoDisposeFutureProvider<List<Offering>>.internal(
  fetchOffers,
  name: r'fetchOffersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchOffersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchOffersRef = AutoDisposeFutureProviderRef<List<Offering>>;
String _$selectedPackageHash() => r'e4b5a8fe1e19518876dd7b2ce8b500b392f44e29';

/// See also [SelectedPackage].
@ProviderFor(SelectedPackage)
final selectedPackageProvider =
    AutoDisposeNotifierProvider<SelectedPackage, Package?>.internal(
  SelectedPackage.new,
  name: r'selectedPackageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedPackageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedPackage = AutoDisposeNotifier<Package?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
