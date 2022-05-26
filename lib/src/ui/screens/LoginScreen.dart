import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machinetest/src/ui/widgets/CommonButton.dart';

import '../../common/NavRoutes.dart';
import '../widgets/CommonTextForm.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 125.h,),
              Padding(
                padding: EdgeInsets.all(15.h),
                child: CommonTextForm(
                  label: 'email',
                  hint: 'email',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.h),
                child: CommonTextForm(
                  label: 'email',
                  hint: 'email',
                ),
              ),
            ],
          )),
          Padding(
            padding: EdgeInsets.all(15.h),
            child: CommonButton(
              onPressed: (){
                NavRoutes.navRemoveUntilHomePage(context);
              },
              color: Colors.red,
              textStyle: TextStyle(color: Colors.white),
              title: 'login',
            ),
          )





        ],
      ),
    );
  }
}
