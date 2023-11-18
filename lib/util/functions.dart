import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";

void hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

String toDisplayText(dynamic value) {
  switch (value.runtimeType) {
    case String:
      return value ?? "--";
    case int:
    case double:
    case bool:
      return value.toString();
    default:
      return "--";
  }
}

DateTime? parseDate({required String? dateString}) {
  try {
    if (dateString == null) return null;

    final date = DateTime.parse(dateString);
    return date;
  } catch (e) {
    return null;
  }
}

String? numberFormatter({required dynamic amount}) {
  if (!(amount is double || amount is int)) return null;

  return NumberFormat.currency(locale: "en_US", symbol: "\$").format(amount);
}

String calculateTimerLeft({required int timeLeft}) {
  final int sec = timeLeft % 60;
  final int min = timeLeft ~/ 60;
  final timeLeftText = "${min.toString().padLeft(2, "0")}:${sec.toString().padLeft(2, "0")}";

  return timeLeftText;
}

bool validateEmail({required String value}) {
  String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  return RegExp(pattern).hasMatch(value);
}

bool validatePassword(String password) {
  String pattern = r"(?=(.*[0-9]))((?=.*[A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z]))^.{8,}$";
  return RegExp(pattern).hasMatch(password);
}
