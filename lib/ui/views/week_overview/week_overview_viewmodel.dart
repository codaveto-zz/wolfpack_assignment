import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';

class WeekOverviewViewModel extends BaseViewModel {
final _log = locator<LoggerService>().getLogger('WeekOverviewViewModel');

  void initialise() async {
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

}
