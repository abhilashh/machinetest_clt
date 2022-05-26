import 'package:flutter/material.dart';

extension MyStringExtentions on String {
  String nullSafeStr() => (isEmpty || this == "null") ? "" : this;
}

extension Context on BuildContext {
  double height({double size = 1.0}) {
    return MediaQuery.of(this).size.height * size;
  }

  double width({double size = 1.0}) {
    return MediaQuery.of(this).size.width * size;
  }

  void rootPop() {
    Navigator.of(this, rootNavigator: true).pop();
  }

  void validateFocus() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
extension StringExtension on String? {
  String toCaps() {
    if (this != null && this!.length > 1) {
      return this![0].toUpperCase() + this!.substring(1);
    } else {
      return '';
    }
  }

  String capitalizeFirstOfEach() {
    if (this != null && this!.contains(" ")) {
      return this!.split(" ").map((str) => str.toCaps()).join(" ");
    } else {
      return '';
    }
  }
}
