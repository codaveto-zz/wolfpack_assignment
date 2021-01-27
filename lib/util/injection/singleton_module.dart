import 'package:injectable/injectable.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/service/moment/moment_api_service.dart';
import 'package:wolfpack_assign/service/moment/moment_store_service.dart';

@module
abstract class SingletonModule {
  // --------------- SERVICES --------------- SERVICES --------------- SERVICES --------------- \\

  @singleton
  MomentApiService get momentApiService;

  @singleton
  MomentStoreService get momentStoreService;

  @singleton
  LoggerService get loggerService;
}
