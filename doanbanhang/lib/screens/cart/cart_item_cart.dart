import 'package:cached_network_image/cached_network_image.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/invoice_payment/counter.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({Key? key, required this.image,
  required this.tittle,
  required this.price,
  required this.id,
  }) : super(key: key);

final String image, tittle;
final int price, id;
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
              child: CachedNetworkImage(imageUrl:"http://10.0.2.2/images/"+image,
              placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
              ),
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
              tittle,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: "\$${price}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
                children: [
                  TextSpan(
                      text: " x${id}",
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
