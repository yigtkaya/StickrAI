import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stickerai/core/local_storage/local_storage.dart';
import 'package:stickerai/core/local_storage/storage_key.dart';

/// use box names to create different env storages
enum BoxName {
  generalBox,
  developmentBox,
  stagingBox,
}

///must call [initialize] method on before using it
class HiveHelper extends LocalStorage {
  late Box<dynamic> _generalBox;

  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  ///initialize box on app main
  Future<void> initialize({
    BoxName boxName = BoxName.generalBox,
  }) async {
    dynamic key;
    final containsEncryptionKey = await secureStorage.containsKey(key: 'encryptionKey');
    if (!containsEncryptionKey) {
      key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'encryptionKey',
        value: base64Url.encode(key),
      );
    } else {
      final encodedKey = await secureStorage.read(key: 'encryptionKey');
      key = base64Url.decode(encodedKey!);
    }

    await Hive.initFlutter();
    _generalBox = await Hive.openBox(
      boxName.name,
      encryptionCipher: HiveAesCipher(key),
    );
  }

  @override
  Map<String, dynamic>? readMap({
    required StorageKey key,
    Map<String, dynamic>? defaultValue,
  }) {
    final dynamic val = _generalBox.get(key, defaultValue: defaultValue);
    if (val != null && val is Map<String, dynamic>) {
      return val;
    } else {
      return null;
    }
  }

  @override
  Future<void> writeMap({
    required StorageKey key,
    required Map<String, dynamic> value,
  }) async {
    await _generalBox.put(key.name, value);
  }

  @override
  String? readString({required StorageKey key, String? defaultValue}) {
    return _generalBox.get(key.name, defaultValue: defaultValue) as String?;
  }

  @override
  Future<void> writeString({required StorageKey key, required String value}) async {
    await _generalBox.put(key.name, value);
  }

  @override
  int? readInt({required StorageKey key, int? defaultValue}) {
    return _generalBox.get(key.name, defaultValue: defaultValue) as int?;
  }

  @override
  Future<void> writeInt({required StorageKey key, required int value}) async {
    await _generalBox.put(key.name, value);
  }

  @override
  bool readBool({required StorageKey key, bool defaultValue = false}) {
    return _generalBox.get(key.name, defaultValue: defaultValue) as bool;
  }

  @override
  Future<void> writeBool({required StorageKey key, required bool value}) async {
    await _generalBox.put(key.name, value);
  }

  @override
  Future<void> delete({required StorageKey key}) async {
    await _generalBox.delete(key.name);
  }

  List<T>? readList<T>({required StorageKey key, List<T>? defaultValue}) {
    final val = _generalBox.get(key.name, defaultValue: defaultValue);
    if (val != null && val is List<T>) {
      return val;
    } else {
      return null;
    }
  }

  Future<void> writeList({required StorageKey key, required List<dynamic> value}) async {
    await _generalBox.put(key.name, value);
  }

  @override
  Future<void> writeDouble({required StorageKey key, required double? value}) async {
    return await _generalBox.put(key.name, value);
  }

  @override
  double? readDouble({required StorageKey key}) {
    return _generalBox.get(key.name) as double?;
  }
}
