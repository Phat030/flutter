import 'package:flutter/material.dart';
import 'package:flutter_app_nguyentanphat/signin/components/signin_form.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            headerScreen(context),
            SignInForm(),
            footerScreen(context),
          ],
        ),
      ),
    ));

  }

  Widget headerScreen(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2 ,
      alignment: Alignment.bottomRight,
      child: Image.asset("dish.png"),
    );
  }

  Widget footerScreen(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomLeft,
      child: Image.asset("dish_2.png"),
    );
  }

}
