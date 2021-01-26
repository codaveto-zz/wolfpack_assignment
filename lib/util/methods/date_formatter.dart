import 'package:intl/intl.dart';

class DateFormatter {
  static String format(DateTime dateTime) => DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
}
