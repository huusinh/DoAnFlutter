import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/productdetails/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage(
      {Key? key, required this.image, required this.product})
      : super(key: key);
  final String image;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Apple Watch",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.tittle,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: kDefaultPaddin,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                child: Hero(
                  tag: "${1}",
                  child: Image.network(
                    "http://10.0.2.2/images/" + image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
