// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../service/log/logger_service.dart';
import '../../service/moment/moment_api_service.dart';
import 'singleton_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final singletonModule = _$SingletonModule();

  // Eager singletons must be registered in the right order
  gh.singleton<LoggerService>(singletonModule.loggerService);
  gh.singleton<MomentApiService>(singletonModule.momentApiService);
  return get;
}

class _$SingletonModule extends SingletonModule {
  @override
  LoggerService get loggerService => LoggerService();
  @override
  MomentApiService get momentApiService => MomentApiService();
}
