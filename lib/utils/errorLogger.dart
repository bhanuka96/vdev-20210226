import 'package:flutter/scheduler.dart';

class ErrorLogger {
  static void add(String text, {bool isError = false}) {
    SchedulerBinding.instance.addPostFrameCallback((_) => print('Info : $text. isError: [$isError]'));
  }
}
