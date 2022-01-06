import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/home/itemcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cart_item_cart.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Dismissible(
            key: Key(products[0].id.toString()),
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Spacer(),
                  Icon(FontAwesomeIcons.trash),
                ],
              ),
            ),
            child: CartItemCard(
              product: products[index],
            ),
          ),
        ),
      ),
    );
  }
}
