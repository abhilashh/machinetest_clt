import 'package:flutter/cupertino.dart';
import 'package:machinetest/src/common/routeconstands.dart';
import 'package:machinetest/src/ui/screens/HomeScreen.dart';
import 'package:machinetest/src/ui/screens/LoginScreen.dart';
import '../ui/screens/BookingScreen.dart';
import '../ui/screens/SplashScreen.dart';

class NavRouteGenerator {
  static Map<String, WidgetBuilder> generateRoutes({dynamic? arguments}) {
    return {
      splashroute: (context) => const SplashScreen(),
      homeroute: (context) => const HomeScreen(),
      loginroute: (context) => const LoginScreen(),
      bookroute: (context) => const BusBooking()
    };
  }
}
