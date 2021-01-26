enum CheckboxEnum {
  empty, checkedWhite, checkedGreen
}

abstract class CheckboxPath {
    static const String empty = 'checkbox_empty';
    static const String checkedWhite = 'checkbox_checked_white';
    static const String checkedGreen = 'checkbox_checked_green';
}

extension CheckboxExtension on CheckboxEnum {
  String get path {
    switch (this) {
      case CheckboxEnum.empty:
        return CheckboxPath.empty;
      case CheckboxEnum.checkedWhite:
        return CheckboxPath.checkedWhite;
        case CheckboxEnum.checkedGreen:
          return CheckboxPath.checkedGreen;
      default:
        return null;
    }
  }
}
