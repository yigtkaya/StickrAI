import 'package:get_it/get_it.dart';
import 'package:stickerai/core/environment/environment.dart';
import 'package:stickerai/core/local_storage/hive_helper.dart';
import 'package:stickerai/src/shared/helpers/analytics_helper.dart';

/// Get it instance
final di = GetIt.instance;

/// environment variables
final env = di.get<Environment>();

/// hive storage
final hiveStorage = di.get<HiveHelper>();

final analytics = di.get<AnalyticsHelper>();
