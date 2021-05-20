import 'package:flutter/widgets.dart';
import 'package:flutter_app_nguyentanphat/cart/cartpage.dart';
import 'package:flutter_app_nguyentanphat/category/categorypage.dart';
import 'package:flutter_app_nguyentanphat/detail/productpage.dart';
import 'package:flutter_app_nguyentanphat/homepage/homepage.dart';
import 'package:flutter_app_nguyentanphat/signin/signinpage.dart';
import 'package:flutter_app_nguyentanphat/signup/signuppage.dart';
import 'package:flutter_app_nguyentanphat/splashpage.dart';



final Map<String, WidgetBuilder> routes={
  SplashPage.routeName : (context) => SplashPage(),
  SignInPage.routeName:(context)=>SignInPage(),
  SignUpPage.routeName:(context)=>SignUpPage(),
  HomePage.routeName:(context)=>HomePage(),
  CartPage.routeName:(context)=>CartPage(),
  ProductPage.routeName:(context)=>ProductPage(),
  CategoryPage.routeName: (context) => CategoryPage(),
};