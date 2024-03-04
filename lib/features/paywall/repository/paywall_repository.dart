import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stickerai/core/revenue_cat/app_data.dart';

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
      log('PurhcaseHandler: getOffers => ${e.message}');
      return [];
    }
  }

// create data at Firestore with appDate.userId
  Future<void> createDataAtFirestore() async {
    final data = FirebaseFirestore.instance.collection('users');
    await data.doc(appData.appUserID).set({
      'dailyUsageLimit': 3,
      'lastActionTime': DateTime.now().subtract(const Duration(days: 1)),
    });
  }

// Save data to Firestore with device ID
  void saveDataToFirestore(int remainingUsage, DateTime lastActionTime) async {
    final data = FirebaseFirestore.instance.collection('users');
    await data.doc(appData.appUserID).set({
      'dailyUsageLimit': remainingUsage,
      'lastActionTime': lastActionTime,
    });
  }

// Fetch data from Firestore using device ID
  Future<void> fetchDataFromFirestore() async {
    try {
      final snapshot = await FirebaseFirestore.instance.collection('users').doc(appData.appUserID).get();
      final dailyLimit = snapshot.get('dailyUsageLimit');
      final lastActionTime = snapshot.get('lastActionTime');

      if (dailyLimit == null || lastActionTime == null) {
        await createDataAtFirestore();
        return;
      }

      if (dailyLimit != null && lastActionTime != null) {
        appData.remainingUsageLimit = dailyLimit;
        appData.isLastActionTime24hAgo = DateTime.now().difference(lastActionTime.toDate()).inHours > 24;
        return;
      }
    } catch (e) {
      await createDataAtFirestore();
      log('PurhcaseHandler: fetchDataFromFirestore => ${e.toString()}');
    }
  }

  Future<bool> canPerform() async {
    if (appData.entitlementIsActive) {
      return true;
    }

    if (appData.remainingUsageLimit > 0) {
      return true;
    } else {
      await fetchDataFromFirestore();
      if (appData.isLastActionTime24hAgo) {
        appData.remainingUsageLimit = 3;
        return true;
      } else {
        return false;
      }
    }
  }
}
