import 'dart:convert';

import 'package:http/http.dart' as http;

class AppStoreService {
  AppStoreService({
    required this.bundleId,
  });
  final String bundleId;
  final String baseApiUrl = "https://itunes.apple.com";
  final String lookupUrl = "/lookup";

  Future<String> getStoreVersion() async {
    final url = Uri.parse("$baseApiUrl$lookupUrl?bundleId=$bundleId");

    try {
      final response = await http.get(
        url,
        headers: {'Content-Type': "application/json"},
      );

      if (response.statusCode == 200) {
        final jsonObj = jsonDecode(response.body);
        final List results = jsonObj['results'];
        if (results.isNotEmpty) {
          return jsonObj['results'][0]['version'] ?? '0';
        }
      }
    } catch (_) {}

    return '0';
  }
}
