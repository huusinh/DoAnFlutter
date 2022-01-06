import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/invoice_payment/counter.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({Key? key, required this.product}) : super(key: key);

final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(product.image),
            ),
          ),
        ),
        SizedBox(
          width: kDefaultPaddin/2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.tittle,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: "\$${product.price}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
                children: [
                  TextSpan(
                      text: " x${product.id}",
                      style: TextStyle(color: kTextColor)),
                ],
              ),
            ),
            CartCounter(),
          ],
        ),
      ],
    );
  }
}
