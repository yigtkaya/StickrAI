
import 'package:stickerai/core/local_storage/storage_key.dart';

abstract class LocalStorage {
  Map<String, dynamic>? readMap({required StorageKey key, Map<String, dynamic>? defaultValue});

  Future<void> writeMap({required StorageKey key, required Map<String, dynamic> value});

  String? readString({required StorageKey key, String? defaultValue});

  Future<void> writeString({required StorageKey key, required String value});

  int? readInt({required StorageKey key, int? defaultValue});

  Future<void> writeInt({required StorageKey key, required int value});

  bool readBool({required StorageKey key, bool defaultValue = false});

  Future<void> writeBool({required StorageKey key, required bool value});

  Future<void> delete({required StorageKey key});

  double? readDouble({required StorageKey key});

  Future<void> writeDouble({required StorageKey key, required double value});
}
