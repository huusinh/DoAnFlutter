import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/productdetails/body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../cart/cart_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product, required this.iduser}) : super(key: key);
  final Product product;
  final int iduser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(context),
      body: Body(
        image: product.image,
        product: product,
        iduser: iduser,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black, //product.color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          FontAwesomeIcons.arrowLeft,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.search,
            size: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.shoppingCart,
            size: 25,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartScreen(
                          iduser: iduser,
                        )));
          },
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
