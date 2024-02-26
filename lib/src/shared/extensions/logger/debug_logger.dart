import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/src/shared/extensions/logger/logger.dart';

void networkLog({required String repository, required dynamic message, dynamic error, StackTrace? stackTrace}) {
  loggerNoMethod.e("REPOSITORY: $repository");
  logger.e(message, error, stackTrace);
}

void dioLog(dynamic message) {
  if (env.enableDioLogs) {
    loggerNoMethod.w(message);
  }
}

void dioDataLog(dynamic message) {
  if (env.enableDioLogs) {
    loggerData.w(message);
  }
}

void appExceptionLog(dynamic message, dynamic error, StackTrace? stackTrace) {
  logger.e("APP EXCEPTION:");
  logger.e(message, error, stackTrace);
}

void dataLog(dynamic message) {
  loggerData.w(message);
}

void navigationLog(dynamic message) {
  loggerData.v(message);
}
