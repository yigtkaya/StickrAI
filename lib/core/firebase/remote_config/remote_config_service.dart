import 'dart:developer';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:stickerai/core/firebase/remote_config/update_config_model.dart';
import 'package:stickerai/core/firebase/remote_config/config_keys.dart';

///Singleton [RemoteConfigService]
class RemoteConfigService {
  RemoteConfigService._internal();
  static final RemoteConfigService _instance = RemoteConfigService._internal();
  static RemoteConfigService get instance => _instance;

  late final FirebaseRemoteConfig _remoteConfig;

  Future<void> init() async {
    try {
      _remoteConfig = FirebaseRemoteConfig.instance;
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(seconds: 1),
        ),
      );

      await _remoteConfig.fetchAndActivate();

      _remoteConfig.onConfigUpdated.listen((event) {
        log('remote_config_service.dart: ${event.toString()}');
      });
    } catch (e) {
      log('remote_config_service.dart: init ${e.toString()}');
    }
  }

  UpdateConfigModel getUpdateConfig() {
    try {
      final response = _remoteConfig.getString(RemoteConfigKeys.updateConfig);
      return UpdateConfigModel.fromJson(response);
    } catch (e) {
      log('remote_config_service.dart: getUpdateConfig ${e.toString()}');
      return UpdateConfigModel(checkVersion: false);
    }
  }
}
