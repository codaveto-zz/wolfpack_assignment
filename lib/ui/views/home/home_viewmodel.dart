import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/service/moment/moment_api_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';
import 'package:wolfpack_assign/util/methods/date_formatter.dart';

class HomeViewModel extends BaseViewModel {
  final Logger _log = locator<LoggerService>().getLogger('HomeViewModel');
  final MomentApiService _momentApiService = locator<MomentApiService>();

  List<Moment> _moments;
  DateTime _dayOfLastMoment;

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _log.d(''' Getting beautiful moments.. ''');
    _moments = await runBusyFuture(_momentApiService.moments);
    this._moments.sort((a, b) => a.date.compareTo(b.date));
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- DAYS --------------- DAYS --------------- DAYS --------------- \\

  bool showHeader(int index) {
    if (index != 0) {
      return this.moments[index - 1].date.day != this.moments[index].date.day;
    }
    return true;
  }

  String getHeaderText(int index) {
    return DateFormatter.header(_moments[index].date);
  }

  // --------------- UI --------------- UI --------------- UI --------------- \\

  void tapMoment(int index, bool value) {
    final moment = this.moments[index];
    moment.setTaken(!moment.isTaken());
    this.notifyListeners();
  }

  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  String get title => 'Wolfpack Assignment';

  String get loadingText => 'Loading moments..';

  List<Moment> get moments => _moments;

}
