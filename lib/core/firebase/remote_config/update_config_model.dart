import 'dart:convert';

class UpdateConfigModel {
  UpdateConfigModel({
    this.minRequiredVersion = '',
    this.forceUpdate = false,
    this.checkVersion = false,
    this.forceStoreVersion = false,
  });
  final String minRequiredVersion;
  final bool forceUpdate;
  final bool checkVersion;
  final bool forceStoreVersion;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minRequiredVersion': minRequiredVersion,
      'forceUpdate': forceUpdate,
      'checkVersion': checkVersion,
      'forceStoreVersion': forceStoreVersion,
    };
  }

  factory UpdateConfigModel.fromMap(Map<String, dynamic> map) {
    return UpdateConfigModel(
      minRequiredVersion: map['minRequiredVersion'],
      forceUpdate: map['forceUpdate'],
      checkVersion: map['checkVersion'],
      forceStoreVersion: map['forceStoreVersion'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdateConfigModel.fromJson(String source) =>
      UpdateConfigModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

//* { FIREBASE REMOTE CONFIG JSON VARIABLES DESCRIPTION
//?  "minRequiredVersion":"1.0.0", // this means current user app should be this version or higher
//?  "forceUpdate":false, // user have to update app or just showing new update available
//?  "checkVersion":true, // if this is false user will not see any update dialog
//?  "forceStoreVersion":false  // if this is enabled , min_required_version will not be active, we will check current store versions
//*  }
