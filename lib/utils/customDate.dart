import 'package:intl/intl.dart';

extension CustomDate on int {
  get ymdHmsFormat {
    return DateFormat('MMM-dd HH:mmaa').format(DateTime.fromMillisecondsSinceEpoch(this));
  }
}
