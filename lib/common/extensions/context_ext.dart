import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  void hideKeyboard() {
    if (primaryFocus?.hasFocus ?? false) {
      primaryFocus?.unfocus();
    }
  }
}
