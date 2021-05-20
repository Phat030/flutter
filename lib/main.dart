import 'package:flutter/material.dart';
import 'package:flutter_app_nguyentanphat/homepage/homepage.dart';
import 'package:flutter_app_nguyentanphat/routes.dart';
import 'package:flutter_app_nguyentanphat/signin/signinpage.dart';
import 'package:flutter_app_nguyentanphat/signup/signuppage.dart';
import 'package:flutter_app_nguyentanphat/splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: SplashPage.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}






