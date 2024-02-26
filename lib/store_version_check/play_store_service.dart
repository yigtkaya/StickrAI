import 'dart:developer';

import 'package:http/http.dart' as http;

class PlayStoreService {
  PlayStoreService({
    required this.packageName,
  });
  final String packageName;
  final String baseApiUrl = "https://play.google.com";
  final String storeDetailUrl = "/store/apps/details";

  Future<String> getStoreVersion() async {
    final url = Uri.parse("$baseApiUrl$storeDetailUrl?id=$packageName");
    try {
      final response = await http.get(
        url,
        headers: {'Content-Type': "application/json"},
      );
      if (response.statusCode == 200) {
        return RegExp(r'"\d+\.\d+\.\d+').firstMatch(response.body)?.group(0)?.replaceAll('"', '') ?? '0';
      }
    } catch (e) {
      log('play_store_service.dart: $e');
    }
    return '0';
  }
}
