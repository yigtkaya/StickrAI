import 'dart:async';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stickerai/core/dependecy_injections/di.dart';
import 'package:stickerai/core/environment/environment.dart';
import 'package:stickerai/src/app.dart';
import 'package:stickerai/src/app_provider.dart';
import 'package:stickerai/src/shared/observer/custom_route_observer.dart';

void main() async {
  await runZonedGuarded(
    () async {
      final networkDependencies = await setupDI(privateEnv: ProductionEnvironment());
      runApp(
        ProviderScope(
          overrides: [
            // update app State
            appProvider.overrideWith(
              (ref) => AppNotifier(ref)..init(networkDependencies.appState),
            ),
            //update content
            // onboardingContentProvider.overrideWith(
            //   (ref) => networkDependencies.content ?? const OnboardingContent(),
            // ),
          ],
          child: KeyboardVisibilityProvider(
            child: KeyboardDismissOnTap(
              child: App(
                customRouteObserver: CustomRouteObserver(),
              ),
            ),
          ),
        ),
      );
    },
    (error, stack) {
      //crashlytics
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: false);
    },
  );
}
