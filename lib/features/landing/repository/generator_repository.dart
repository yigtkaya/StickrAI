import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stickerai/src/models/input.dart';
import 'package:stickerai/src/models/sticker_reponse.dart';
import 'package:stickerai/src/providers/dio/dio_provider.dart';
import 'package:stickerai/src/providers/dio/dio_state.dart';

part 'generator_repository.g.dart';

@riverpod
GeneratorRepository generatorRepository(GeneratorRepositoryRef ref) => GeneratorRepository(
      dioState: ref.read(dioProvider),
    );

class GeneratorRepository {
  GeneratorRepository({
    required DioState dioState,
  })  : locale = dioState.locale,
        _dioClient = dioState.dioClient;

  final Dio _dioClient;
  final String locale;

  Future<StickerResponse> generateSticker(Input input) async {
    try {
      final response = await _dioClient.post(
        '/replicate/sticker',
        data: input.toJson(),
      );
      return StickerResponse.fromJson(response.data);
    } on DioException catch (e) {
      return StickerResponse(error: e.message, status: false);
    } catch (e) {
      return StickerResponse(error: e.toString(), status: false);
    }
  }
}
