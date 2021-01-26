enum IconEnum { alarm, business, bookmark, breakfast, home, pharmacy }

abstract class IconPath {
  static const String alarm = 'baseline_alarm_black_24pt';
  static const String business = 'baseline_business_center_black_24pt';
  static const String bookmark = 'baseline_class_black_24pt';
  static const String breakfast = 'baseline_free_breakfast_black_24pt';
  static const String home = 'baseline_home_black_24pt';
  static const String pharmacy = 'baseline_local_pharmacy_black_24pt';
}

extension CheckboxExtension on IconEnum {
  String get path {
    switch (this) {
      case IconEnum.alarm:
        return IconPath.alarm;
      case IconEnum.business:
        return IconPath.business;
      case IconEnum.bookmark:
        return IconPath.bookmark;
      case IconEnum.breakfast:
        return IconPath.breakfast;
      case IconEnum.home:
        return IconPath.home;
      case IconEnum.pharmacy:
        return IconPath.pharmacy;
      default:
        return null;
    }
  }
}
