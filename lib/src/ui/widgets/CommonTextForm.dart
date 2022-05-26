import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextForm extends StatelessWidget {
  final String? label;
  final String? hint;

  const CommonTextForm({Key? key,this.label,this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(15.w)
        ),
        // labelText: label,
        hintText: hint,
      ),);
  }
}
