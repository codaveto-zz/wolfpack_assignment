import 'package:wolfpack_assign/util/injection/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';

class HomeViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('HomeViewModel');

  void initialise() async {
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }
}
