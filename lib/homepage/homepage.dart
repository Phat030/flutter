import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'file:///C:/Users/nguye/AndroidStudioProjects/flutter_app_nguyentanphat/lib/homepage/components/body.dart';


class HomePage  extends StatelessWidget {
  int selectIndex = 0;
  static String routeName = "/home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }

}
