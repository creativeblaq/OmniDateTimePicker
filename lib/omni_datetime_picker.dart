/// A DateTime picker to pick a single DateTime or a DateTime range.
///
/// Use [showOmniDateTimePicker] to pick a single DateTime.
///
/// Use [showOmniDateTimeRangePicker] to pick a DateTime range.
///
library omni_datetime_picker;

import 'package:flutter/material.dart';

import 'src/omni_datetime_picker.dart';
import 'src/omni_datetime_range_picker.dart';

/// Show a dialog of the [OmniDateTimePicker]
///
/// Returns a List<DateTime> with startDateTime & endDateTime
///
Future<DateTime?> showOmniDateTimePicker(
    {required BuildContext context,
    DateTime? startInitialDate,
    DateTime? startFirstDate,
    DateTime? startLastDate,
    bool showTimePicker = true,
    bool? is24HourMode,
    bool? isShowSeconds,
    Color? primaryColor,
    Color? backgroundColor,
    Color? calendarTextColor,
    Color? tabTextColor,
    Color? unselectedTabBackgroundColor,
    Color? buttonTextColor,
    TextStyle? timeSpinnerTextStyle,
    TextStyle? timeSpinnerHighlightedTextStyle,
    Radius? borderRadius,
    String title = "Select"}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return OmniDateTimePicker(
        startInitialDate: startInitialDate,
        startFirstDate: startFirstDate,
        startLastDate: startLastDate,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        primaryColor: primaryColor,
        showTimePicker: showTimePicker,
        backgroundColor: backgroundColor,
        calendarTextColor: calendarTextColor,
        tabTextColor: tabTextColor,
        unselectedTabBackgroundColor: unselectedTabBackgroundColor,
        buttonTextColor: buttonTextColor,
        timeSpinnerTextStyle: timeSpinnerTextStyle,
        timeSpinnerHighlightedTextStyle: timeSpinnerHighlightedTextStyle,
        borderRadius: borderRadius,
        title: title,
      );
    },
  );
}

/// Show a dialog of the [OmniDateTimeRangePicker]
///
/// Returns a List<DateTime> with startDateTime & endDateTime
///
Future<List<DateTime>?> showOmniDateTimeRangePicker({
  required BuildContext context,
  bool showTimePicker = true,
  DateTime? startInitialDate,
  DateTime? startFirstDate,
  DateTime? startLastDate,
  DateTime? endInitialDate,
  DateTime? endFirstDate,
  DateTime? endLastDate,
  bool? is24HourMode,
  bool? isShowSeconds,
  Color? primaryColor,
  Color? backgroundColor,
  Color? calendarTextColor,
  Color? tabTextColor,
  Color? unselectedTabBackgroundColor,
  Color? buttonTextColor,
  TextStyle? timeSpinnerTextStyle,
  TextStyle? timeSpinnerHighlightedTextStyle,
  Radius? borderRadius,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return OmniDateTimeRangePicker(
        startInitialDate: startInitialDate,
        startFirstDate: startFirstDate,
        startLastDate: startLastDate,
        endInitialDate: endInitialDate,
        showTimePicker: showTimePicker,
        endFirstDate: endFirstDate,
        endLastDate: endLastDate,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        primaryColor: primaryColor,
        backgroundColor: backgroundColor,
        calendarTextColor: calendarTextColor,
        tabTextColor: tabTextColor,
        unselectedTabBackgroundColor: unselectedTabBackgroundColor,
        buttonTextColor: buttonTextColor,
        timeSpinnerTextStyle: timeSpinnerTextStyle,
        timeSpinnerHighlightedTextStyle: timeSpinnerHighlightedTextStyle,
        borderRadius: borderRadius,
      );
    },
  );
}

Future<dynamic> showErrorDialog(
    BuildContext context, String errorMsg, EdgeInsets insetPadding) {
  return showDialog(
      builder: (cnxt) => AlertDialog(
            insetPadding: insetPadding,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            contentPadding: const EdgeInsets.only(
              top: 0,
              left: 16,
              right: 16,
              bottom: 8,
            ),
            titlePadding:
                const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 2),
            alignment: Alignment.bottomCenter,
            title: const Text('Error',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            content: Text(errorMsg,
                style: const TextStyle(color: Colors.white, fontSize: 14)),
            backgroundColor: Colors.redAccent,
          ),
      context: context);
}
