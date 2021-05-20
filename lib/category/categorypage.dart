import 'package:flutter/material.dart';
import 'package:flutter_app_nguyentanphat/category/components/body.dart';

class CategoryPage extends StatelessWidget {
  static String routeName = "/category_screen";
  @override
  Widget build(BuildContext context) {
    int id = ModalRoute.of(context).settings.arguments;
    return Body(cateId: id);
  }
}