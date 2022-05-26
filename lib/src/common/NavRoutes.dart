import 'package:flutter/material.dart';
import 'package:machinetest/src/common/routeconstands.dart';

class NavRoutes {

  static void navRemoveUntilLoginPage(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamedAndRemoveUntil(loginroute, (route) => false);
  }

  static void navRemoveUntilHomePage(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamedAndRemoveUntil(homeroute, (route) => false);
  }
  static void navUntilBookPage(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamedAndRemoveUntil(bookroute, (route) => false);
  }
}
