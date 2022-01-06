import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/productdetails/body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatelessWidget{
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar (BuildContext context){
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft,
            size: 20,),
            onPressed: () {
              Navigator.pop(context);
            },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.search,
            size: 20,),
              onPressed: () {},
        ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.shoppingCart,
            size: 25,),
            onPressed: (){},
          ),
          SizedBox(width: kDefaultPaddin/2,)
        ],
   );
  }
}