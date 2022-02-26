import 'package:cached_network_image/cached_network_image.dart';
import 'package:doanbanhang/api/api_deleteproduct.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/cart/cart_screen.dart';
import 'package:doanbanhang/screens/invoice_payment/counter.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class InvoiceItemCard extends StatelessWidget {
  const InvoiceItemCard(
      {Key? key,
      required this.image,
      required this.tittle,
      required this.price,
      required this.id,
      required this.idsp,
      required this.soluong,
      required this.iduser})
      : super(key: key);

  final String image, tittle;
  final int price, id, idsp, soluong;
  final int iduser;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/images/$image"),
            ),
          ),
        ),
        const SizedBox(width: kDefaultPaddin / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 180),
                IconButton(
                    onPressed: () async {
                      var flag = await fetchDelete(id);
                      if (flag == 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartScreen(
                                      iduser: iduser,
                                    )));
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Notification'),
                                content: const Text('Delete product failed'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  )
                                ],
                              );
                            });
                      }
                    },
                    icon: const Icon(Icons.delete)),
              ],
            ),
            Text(
              tittle,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: "\$$price",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                text: soluong.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
