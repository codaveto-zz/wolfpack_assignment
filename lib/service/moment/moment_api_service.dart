import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wolfpack_assign/data/enum/icon_enum.dart';
import 'package:wolfpack_assign/data/model/medicine.dart';
import 'package:wolfpack_assign/data/model/moment.dart';
import 'package:wolfpack_assign/util/constants/sizes.dart';

class MomentApiService {
  Moment _breakfast({@required int day}) => Moment(
      title: 'Ontbijt',
      date: DateTime(2019, 1, day, 8),
      icon: IconEnum.breakfast,
      medicineList: [
        Medicine(name: 'Paracetamol', isTaken: Random().nextBool()),
        Medicine(name: 'Vitamine C', isTaken: Random().nextBool())
      ],
      isCollapsed: false);

  Moment _lunch({@required int day}) => Moment(
      title: 'Lunch',
      date: DateTime(2019, 1, day, 12),
      icon: IconEnum.home,
      medicineList: [Medicine(name: 'Acebutol', isTaken: Random().nextBool())],
      isCollapsed: false);

  Moment _atWork({@required int day}) => Moment(
      title: 'Op \'t werk',
      date: DateTime(2019, 1, day, 15),
      icon: IconEnum.business,
      medicineList: [
        Medicine(name: 'Paracetamol', isTaken: Random().nextBool()),
        Medicine(name: 'Vitamine C', isTaken: Random().nextBool())
      ],
      isCollapsed: false);

  Moment _bedTime({@required int day}) => Moment(
      title: 'Voor het slapen',
      date: DateTime(2019, 1, day, 22),
      icon: IconEnum.alarm,
      medicineList: [Medicine(name: 'Melatonin', isTaken: Random().nextBool())],
      isCollapsed: false);

  Future<List<Moment>> get moments async {
    await Future.delayed(Duration(seconds: CustomSize.defaultFakeWaitingDuration));
    return [
      _breakfast(day: 1),
      _lunch(day: 1),
      _breakfast(day: 2),
      _lunch(day: 2),
      _atWork(day: 2),
      _breakfast(day: 3),
      _lunch(day: 3),
      _breakfast(day: 4),
      _atWork(day: 4),
      _breakfast(day: 6),
      _lunch(day: 6),
      _atWork(day: 6),
      _bedTime(day: 7),
      _breakfast(day: 8),
      _lunch(day: 8),
      _breakfast(day: 9),
      _lunch(day: 9),
      _atWork(day: 9),
      _breakfast(day: 10),
      _lunch(day: 10),
      _breakfast(day: 11),
      _atWork(day: 11),
      _breakfast(day: 13),
      _lunch(day: 13),
      _atWork(day: 13),
      _bedTime(day: 14),
    ];
  }
}
