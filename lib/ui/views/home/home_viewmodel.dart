import 'package:logger/logger.dart';
import 'package:wolfpack_assign/data/model/medicine.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/service/moment/moment_api_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';

class HomeViewModel extends BaseViewModel {
  final Logger _log = locator<LoggerService>().getLogger('HomeViewModel');
  final MomentApiService _momentApiService = locator<MomentApiService>();

  List<Moment> _moments;

  void initialise() async {
    _moments = await runBusyFuture(_momentApiService.moments);
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  String get loadingText => 'Loading moments..';

}
