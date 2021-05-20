import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_nguyentanphat/detail/productpage.dart';
import 'package:flutter_app_nguyentanphat/model/categories.dart';
import 'package:flutter_app_nguyentanphat/model/products.dart';

class CategoryForm extends StatelessWidget {
  int cateID;
  Products product;
  CategoryForm(this.cateID);
  Categories category;
  int id;


  @override
  Widget build(BuildContext context) {
    final productsList = getProductsFromID(cateID);
    return Container(
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          itemCount:productsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                // print(product.id.toString());
                Navigator.pushNamed(context, ProductPage.routeName,
                    arguments: ProductDetailsArguments(product: productsList[index]));
              },


              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(productsList[index].image,fit: BoxFit.fill,width: 200,height: 200,),
                  Text(productsList[index].title,style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,fontSize:20 ),),
                  Text(productsList[index].description,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:12,),),
                  Text(productsList[index].price.toString(), style: TextStyle(
                      color: Colors.black),)

                ],
              ),
            );
          }),
    );
  }


  List<Products> getProductsFromID(int id){
    List<Products> tmp = [];
    final products = Products.init();
    for (int i = 0; i < products.length; i++){
      if(products[i].cateId == id){
        tmp.add(products[i]);
      }
    }
    return tmp;
  }
}


