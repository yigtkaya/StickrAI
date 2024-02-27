import 'package:dio/dio.dart';
import 'package:stickerai/src/shared/extensions/logger/debug_logger.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    dioLog('REQUEST[${options.method}] => PATH: ${options.uri}');
    dioLog('REQUEST HEADERS');
    dioDataLog(options.headers);
    dioLog('REQUEST QUERY PARAMETERS');
    dioDataLog(options.queryParameters);
    dioLog('REQUEST BODY');
    dioDataLog(options.data);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    dioLog(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.uri}',
    );
    dioLog('RESPONSE BODY');
    dioDataLog(response.data);
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    dioLog(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.uri}',
    );
    dioLog('ERROR HEADERS');
    dioDataLog(err.response?.headers);
    dioLog('ERROR BODY');
    dioDataLog(err.response?.data);
    return super.onError(err, handler);
  }
}
