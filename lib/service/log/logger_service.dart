import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

class LoggerService {
  Logger getLogger(String className) {
    return Logger(printer: _SimpleLogPrinter(className));
  }
}

class _SimpleLogPrinter extends LogPrinter {
  final String className;

  _SimpleLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    var emoji = PrettyPrinter.levelEmojis[event.level];
    return ['[${DateFormat('dd MMM yyyy, kk:mm:ss').format(DateTime.now())}]  >>  [$emoji $className]  >>  ${event.message}'];
  }
}
