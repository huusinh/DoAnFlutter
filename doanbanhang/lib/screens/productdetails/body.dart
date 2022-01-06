import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/icons/my_flutter_app_icons.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/productdetails/add_to_cart.dart';
import 'package:doanbanhang/screens/productdetails/colorandsize.dart';
import 'package:doanbanhang/screens/productdetails/description.dart';
import 'package:doanbanhang/screens/productdetails/product_title_with_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cart_counter.dart';
import 'counter_with_fav_button.dart';

class Body extends StatelessWidget{
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  padding: EdgeInsets.only(
                    top: size.height *0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  height:500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children:<Widget> [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin/2,),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin/2,),
                      const CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin/2,),
                       AddToCart(product: product,),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
               
              ],
            ),
          ),
        ],
        ),

    );
  }
}

