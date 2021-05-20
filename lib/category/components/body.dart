import 'package:flutter/material.dart';
import 'package:flutter_app_nguyentanphat/category/components/category_form.dart';
import 'package:flutter_app_nguyentanphat/homepage/components/homeheader.dart';
import 'package:flutter_app_nguyentanphat/model/categories.dart';

class Body extends StatelessWidget {
  int cateId;
  Categories categories;
  Body({this.cateId});
  int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeHeader(),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      // type: BottomNavigationBarType.fixed,
      // ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cover_cate.png"),
            fit: BoxFit.fitWidth,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        child:CategoryForm(this.cateId),

      ),
    );
  }
}