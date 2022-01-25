import 'package:doanbanhang/api/api_apple.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'itemcard.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder<List<Product>>(
        future: fetchApple(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < snapshot.data!.length; i++)
                  Container(
                    margin: const EdgeInsets.only(right: kDefaultPaddin),
                    padding: const EdgeInsets.all(kDefaultPaddin),
                    decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Hero(
                          tag: snapshot.data![i].id.toString(),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen(product:snapshot.data![i])));
                              },
                              child: Image.network(
                                "http://10.0.2.2/images/" +
                                    snapshot.data![i].image.toString(),
                                width: 110,
                                height: 110,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              snapshot.data![i].tittle.toString(),
                              style: TextStyle(color: Colors.black),
                            ),
                             SizedBox(
                              height: 5,
                            ),
                            Text(
                              snapshot.data![i].price.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                  ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
