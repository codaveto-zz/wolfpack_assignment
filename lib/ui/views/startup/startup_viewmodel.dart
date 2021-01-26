import 'dart:async';

import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:wolfpack_assign/nav/router.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  Logger _log;

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _log = locator<LoggerService>().getLogger('StartupViewModel');
    _log.d(''' Showing welcome message.. ''');
    await Future.delayed(Duration(seconds: 4));
    Get.offNamed(Routes.homeView);
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  String get welcomeMessage => 'Welcome WolfpackIT';


}



