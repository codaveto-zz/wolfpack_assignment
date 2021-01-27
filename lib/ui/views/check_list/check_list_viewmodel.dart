import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:wolfpack_assign/data/model/medicine.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/service/moment/moment_store_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';
import 'package:wolfpack_assign/util/methods/date_formatter.dart';

class CheckListViewModel extends BaseViewModel {
  final Logger _log = locator<LoggerService>().getLogger('CheckListViewModel');
  final MomentStoreService _momentStoreService = locator<MomentStoreService>();

// --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
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
      return this._momentStoreService.moments[index - 1].date.day != this._momentStoreService.moments[index].date.day;
    }
    return true;
  }

  String getHeaderText(int index) {
    return DateFormatter.header(_momentStoreService.moments[index].date);
  }

// --------------- UI --------------- UI --------------- UI --------------- \\

  void tapMoment(int index, bool value) {
    this.notifyListeners();
  }

  void tapMedicine(Medicine medicine, int index) {
    _momentStoreService.takeOrUntakeMedicine(medicine, index);
    this.notifyListeners();
  }

// --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  List<Moment> get moments => _momentStoreService.moments;

  String get noMomentsText => 'No moments for you';
}
