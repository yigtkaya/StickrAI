import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_state.freezed.dart';

@freezed
class DioState with _$DioState {
  const factory DioState({
    required Dio dioClient,
    required String locale,
  }) = _DioState;
}
