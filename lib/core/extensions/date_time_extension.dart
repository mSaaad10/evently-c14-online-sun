import 'package:intl/intl.dart';

extension DateFormatExtension on DateTime {
  String get getMonth {
    DateFormat formatter = DateFormat("MMMM");
    return formatter.format(this);
  }
}
