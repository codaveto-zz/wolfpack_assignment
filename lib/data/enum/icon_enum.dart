import 'package:flutter/cupertino.dart';

enum IconEnum { alarm, business, bookmark, breakfast, home, pharmacy }

abstract class IconPath {
  static const String alarm = 'assets/images/baseline_alarm_black_24pt.png';
  static const String business = 'assets/images/baseline_business_center_black_24pt.png';
  static const String bookmark = 'assets/images/baseline_class_black_24pt.png';
  static const String breakfast = 'assets/images/baseline_free_breakfast_black_24pt.png';
  static const String home = 'assets/images/baseline_home_black_24pt.png';
  static const String pharmacy = 'assets/images/baseline_local_pharmacy_black_24pt.png';
}

extension CheckboxExtension on IconEnum {
  ImageIcon get image {
    switch (this) {
      case IconEnum.alarm:
        return ImageIcon(AssetImage(IconPath.alarm));
      case IconEnum.business:
        return ImageIcon(AssetImage(IconPath.business));
      case IconEnum.bookmark:
        return ImageIcon(AssetImage(IconPath.bookmark));
      case IconEnum.breakfast:
        return ImageIcon(AssetImage(IconPath.breakfast));
      case IconEnum.home:
        return ImageIcon(AssetImage(IconPath.home));
      case IconEnum.pharmacy:
        return ImageIcon(AssetImage(IconPath.pharmacy));
      default:
        return null;
    }
  }
}
