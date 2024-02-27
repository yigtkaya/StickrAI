import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stickerai/src/models/input.dart';
import 'package:stickerai/src/models/sticker_reponse.dart';
import 'package:stickerai/src/providers/dio/dio_provider.dart';
import 'package:stickerai/src/providers/dio/dio_state.dart';

part 'generator_repository.g.dart';

@riverpod
GeneratorRepository generatorRepository(GeneratorRepositoryRef ref) => GeneratorRepository(
      dioState: ref.read(dioProvider), // a constant defined elsewhere
    );

class GeneratorRepository {
  GeneratorRepository({
    required DioState dioState,
  })  : locale = dioState.locale,
        _dioClient = dioState.dioClient;

  final Dio _dioClient;
  final String locale;

  Future<StickerResponse> generateSticker(Input input) async {
    final response = await _dioClient.get(
      '/sticker',
      queryParameters: {
        'locale': locale,
      },
    );
    return StickerResponse.fromJson(response.data);
  }
}
