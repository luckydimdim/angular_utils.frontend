import 'dart:core';
import 'package:js/js_util.dart';
import 'package:js/js.dart';

class JsConverter {
  static DateTime getDateTime(dynamic jsDate) {
    var month = callMethod(jsDate, 'get', ['month']);
    var year = callMethod(jsDate, 'get', ['year']);
    var date = callMethod(jsDate, 'get', ['date']);
    var hour = callMethod(jsDate, 'get', ['hour']);
    var minute = callMethod(jsDate, 'get', ['minute']);
    var second = callMethod(jsDate, 'get', ['second']);
    var millisecond = callMethod(jsDate, 'get', ['millisecond']);

    return new DateTime(
        year,
        month + 1,
        date,
        hour,
        minute,
        second,
        millisecond);
  }
}