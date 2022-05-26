import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machinetest/src/common/color_palette.dart';
import 'package:machinetest/src/common/extensions.dart';
import 'package:machinetest/src/ui/screens/SplashScreen.dart';

import '../main.dart';
import 'common/nav_route_generator.dart';
import 'common/routeconstands.dart';

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context) {
        return  MaterialApp(
          title: 'Machine Test',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: ColorPalette.primaryBlack,
          ),
          home: const SplashScreen(),
          initialRoute: initialroute,
          routes: NavRouteGenerator.generateRoutes(),
        );
      }
    );
  }
}
