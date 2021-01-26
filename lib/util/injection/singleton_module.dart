import 'package:injectable/injectable.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/service/moment_api_service.dart';

@module
abstract class SingletonModule {
  // --------------- SERVICES --------------- SERVICES --------------- SERVICES --------------- \\

  @singleton
  MomentApiService get momentApiService;

  @singleton
  LoggerService get loggerService;

}
