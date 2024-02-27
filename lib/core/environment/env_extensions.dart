import 'package:stickerai/core/environment/environment.dart';

extension EnvExt on Environment {
  bool get isDev => this is DevelopmentEnvironment;
  bool get isProd => this is ProductionEnvironment;
  bool get isStg => this is StagingEnvironment;
}
