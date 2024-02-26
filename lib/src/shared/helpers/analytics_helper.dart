import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsHelper {
  Future<void> log({
    String? name,
    Map<String, dynamic>? parameters,
  }) async {
    await FirebaseAnalytics.instance.logEvent(
      name: name ?? '', // event name
      parameters: parameters ?? {}, //event params
    );
    // Log Events
    // if (parameters != null) {
    //   // events with parameters
    //   FlutterUxcam.logEventWithProperties(name ?? '', {
    //     "parameters": parameters,
    //   });
    // } else if (name != null) {
    //   // events without parameters
    //   FlutterUxcam.logEvent(name);
    // }
  }
}
