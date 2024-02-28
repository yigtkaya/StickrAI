import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/local_storage/storage_key.dart';

part 'my_stickers_provider.g.dart';

@riverpod
class MyStickers extends _$MyStickers {
  @override
  List<dynamic> build() {
    final stickerList = hiveStorage.readList(key: StorageKey.userGeneratedStickers) ?? [];
    return stickerList;
  }

  void set(List<dynamic> value) {
    state = value;
  }
}
