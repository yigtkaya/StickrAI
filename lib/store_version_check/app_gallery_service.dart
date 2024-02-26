import 'dart:convert';

import 'package:http/http.dart' as http;

extension ExtensionMap on Map {
  String get toJson => json.encode(this);
}

class AppGalleryService {
  AppGalleryService({
    required this.appId,
    required this.clientSecret,
    required this.clientId,
  });
  final String appId;
  final String clientSecret;
  final String clientId;
  final String baseApiUrl = "https://connect-api.cloud.huawei.com";
  final String tokenUrl = "/api/oauth2/v1/token";
  final String appInfoUrl = "/api/publish/v2/app-info";
  String _token = '';

  Future<void> _getToken() async {
    if (_token.isNotEmpty) {
      return;
    }
    _token = '';

    final url = Uri.parse(baseApiUrl + tokenUrl);
    final jsonBody = {
      "grant_type": "client_credentials",
      "client_id": clientId,
      "client_secret": clientSecret,
    }.toJson;

    const jsonKeyAccessToken = "access_token";
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': "application/json",
        },
        body: jsonBody,
      );
      if (response.statusCode == 200) {
        final jsonObj = jsonDecode(response.body);
        if (jsonObj.containsKey(jsonKeyAccessToken)) {
          _token = jsonObj[jsonKeyAccessToken];
        }
      }
    } catch (_) {}
  }

  Future<String> getStoreVersion() async {
    if (_token.isEmpty) {
      await _getToken();
    }
    final url = Uri.parse("$baseApiUrl$appInfoUrl?appId=$appId");

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': "application/json",
          "Authorization": "Bearer $_token",
          "client_id": clientId,
        },
      );

      if (response.statusCode == 200) {
        final jsonObj = jsonDecode(response.body);

        if (jsonObj["ret"]["code"] == 0) {
          //it is mandatory because of it should be safe
          if (jsonObj.containsKey('appInfo')) {
            return jsonObj['appInfo']['versionNumber'] ?? '0';
          }
        }
      }
    } catch (_) {}

    return '0';
  }
}
