import 'package:logger_plus/logger_plus.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/environment/env_extensions.dart';

class MyFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return env.isStg || env.enableDioLogs;
  }
}

Logger logger = Logger(filter: MyFilter());

Logger loggerNoMethod = Logger(
  filter: MyFilter(),
  printer: PrettyPrinter(
    methodCount: 0,
  ),
);

Logger loggerData = Logger(
  filter: MyFilter(),
  printer: PrettyPrinter(
    methodCount: 0,
    printEmojis: false,
  ),
);
