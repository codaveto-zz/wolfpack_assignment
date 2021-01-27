import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/data/model/medicine.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/service/moment/moment_store_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';

class WeekOverviewViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('WeekOverviewViewModel');

  final MomentStoreService _momentStoreService = locator<MomentStoreService>();
  final DateTime weekStart = DateTime(2019, 1, 7);

  List<Moment> _weeklyMoments = [];
  int _totalMedicines = 0;
  int _totalTaken = 0;

// --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _initWeeklyMoment(from: weekStart);
    _log.i('I am initialized');
  }

  void _initWeeklyMoment({DateTime from}) {
    for (Moment moment in _momentStoreService.moments) {
      if (moment.date.isAfter(from) && (moment.date.isBefore(from.add(Duration(days: 7))))) {
        for (Medicine medicine in moment.medicineList) {
          _totalMedicines++;
          _totalTaken += medicine.isTaken ? 0 : 1;
        }
        _weeklyMoments.add(moment);
      }
    }
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  bool showHeader(int index) {
    if (index > 1) {
      return this._weeklyMoments[index - 1].date.day != this._weeklyMoments[index].date.day;
    }
    return true;
  }

  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  int get totalMedicines => _totalMedicines;

  int get totalTaken => _totalTaken;

  List<Moment> get weeklyMoments => _weeklyMoments;

  String get welcomeText =>
      '''Ja goedendag welkom wat fijn dat je er bent we laten hier een totaaloverzicht van het aantal genomen medicijnen zien. De paracetamol schijnt goed te zijn deze week. Neem er niet teveel van en let goed op jezelf houdoe en tot ziens.''';
}
