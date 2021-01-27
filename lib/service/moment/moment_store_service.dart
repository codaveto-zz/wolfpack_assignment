import 'package:wolfpack_assign/data/model/medicine.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/service/log/logger_service.dart';
import 'package:wolfpack_assign/service/moment/moment_api_service.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';

class MomentStoreService {
  final _log = locator<LoggerService>().getLogger('MomentStoreService');
  final _momentApiService = locator<MomentApiService>();
  List<Moment> _moments;

  Future<void> initialise() async {
    _log.d(''' Getting beautiful moments.. ''');
    _moments = await _momentApiService.moments;
    this._moments.sort((a, b) => a.date.compareTo(b.date));
    _log.i('I am initialized');
  }

  void takeOrUntakeMedicine(Medicine medicine, int index) {
    this._moments[index].medicineList.firstWhere((element) => element.name == medicine.name).isTaken =
        !medicine.isTaken;
  }

  List<Moment> get moments => _moments;
}
