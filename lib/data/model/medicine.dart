import 'dart:math';

import 'package:flutter/material.dart';

class Medicine {

  final String name;
  bool isTaken;
  String _amount;

  Medicine({@required this.name, @required this.isTaken}) {
    this._amount = '${Random().nextInt(4) + 1} stuks, ${Random().nextInt(9) + 1}0 mg';
  }

  String get amount => _amount;
}
