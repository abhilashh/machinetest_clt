import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machinetest/src/ui/widgets/CommonButton.dart';

import '../../common/NavRoutes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(const Duration(seconds: 2),(){
    //   NavRoutes.navRemoveUntilHomePage(context);
    // });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:Column(
        children: [
          Expanded(child: Center(
            child: Text('fdsfd'),
          )),
          Padding(
            padding: EdgeInsets.all(20.h),
            child: CommonButton(
              color: Colors.white,
              title: 'Get Start',
              textStyle: const TextStyle(
                  color: Colors.red
              ),
              onPressed: (){
                NavRoutes.navRemoveUntilLoginPage(context);
              },

            ),
          )
        ],
      )
    );
  }
}

