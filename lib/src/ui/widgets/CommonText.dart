import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String? texts;
  const CommonText({Key? key,this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(texts??"");
  }
}
