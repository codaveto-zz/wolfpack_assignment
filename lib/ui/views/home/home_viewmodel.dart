import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/service/moment/moment_store_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';

class HomeViewModel extends BaseViewModel {
  final Logger _log = locator<LoggerService>().getLogger('HomeViewModel');
  final MomentStoreService _momentStoreService = locator<MomentStoreService>();

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    await runBusyFuture(_momentStoreService.initialise());
    _log.i('I am initialized');

  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

// --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  String get title => 'Wolfpack Assignment';

  String get loadingText => 'Loading moments..';
}
