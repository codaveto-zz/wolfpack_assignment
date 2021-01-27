import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CustomFont {
  static TextStyle get bodyText => Get.textTheme.bodyText2.copyWith(fontSize: 15, height: 1.5);
}
