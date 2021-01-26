import 'package:intl/intl.dart';

class DateFormatter {
  static String full(DateTime dateTime) => DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
  static String header(DateTime dateTime) => '''${_dayName(dateTime)} ${dateTime.day} ${_monthName(dateTime)}''';
  static String time(DateTime dateTime) => DateFormat('HH:mm').format(dateTime);

  static String _dayName(DateTime dateTime) {
    switch (dateTime.weekday) {
      case DateTime.monday: return 'Maandag';
      case DateTime.tuesday: return 'Dinsdag';
      case DateTime.wednesday: return 'Woensdag';
      case DateTime.thursday: return 'Donderdag';
      case DateTime.friday: return 'Vrijdag';
      case DateTime.saturday: return 'Zaterdag';
      case DateTime.sunday: return 'Zondag';
    }
  }
  
  static String _monthName(DateTime dateTime) {
    switch (dateTime.month) {
      case DateTime.january: return 'Januari';
      case DateTime.february: return 'Februari';
      case DateTime.march: return 'Maart';
      case DateTime.april: return 'April';
      case DateTime.may: return 'Mei';
      case DateTime.june: return 'Juni';
      case DateTime.july: return 'Juli';
      case DateTime.august: return 'Augustus';
      case DateTime.september: return 'September';
      case DateTime.october: return 'Oktober';
      case DateTime.november: return 'November';
      case DateTime.december: return 'December';
    }
  }
  
  
}
