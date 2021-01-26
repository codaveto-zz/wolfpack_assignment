import 'package:wolfpack_assign/data/enum/icon_enum.dart';

import 'medicine.dart';

class Moment {
  final String title;
  final IconEnum icon;
  final List<Medicine> medicineList;
  final DateTime date;
  bool isCollapsed;
  bool _isTaken = false;

  Moment({this.title, this.icon, this.medicineList, this.date, this.isCollapsed});

  bool isTaken() {
    if (_isTaken == false) {
      for (Medicine medicine in this.medicineList) {
        if (medicine.isTaken) {
          _isTaken = true;
          break;
        }
      }
    }
    return _isTaken;
  }

  void setTaken(bool isTaken) {
    for (Medicine medicine in this.medicineList) {
      medicine.isTaken = isTaken;
    }
    _isTaken = isTaken;
  }
}
