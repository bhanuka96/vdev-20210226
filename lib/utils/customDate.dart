import 'package:intl/intl.dart';

extension CustomDate on int {
  get ymdHmsFormat {
    return DateFormat('yyyy MMM dd HH:mm:ss').format(DateTime.fromMillisecondsSinceEpoch(this));
  }
}
