import 'package:doanbanhang/api/api_apple.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:doanbanhang/screens/products/apple.dart';
//import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:flutter/material.dart';

import 'itemcard.dart';

class SellOf extends StatefulWidget {
  const SellOf({Key? key, required this.iduser}) : super(key: key);
  final int iduser;
  @override
  _SellOf createState() => _SellOf();
}

class _SellOf extends State<SellOf> {
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                              product: snapshot.data![i],
                                              iduser: widget.iduser,
                                            )));
                              },
                              child: Image.network(
                                "http://10.0.2.2:8000/images/" +
                                    snapshot.data![i].image,
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

    //     GestureDetector(
    //   onTap: () {},
    //  child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children:<Widget>[
    //           Expanded(
    //         child:Container(
    //         padding: const EdgeInsets.all(kDefaultPaddin),
    //         //width: 140,
    //         //height: 160,
    //         decoration: BoxDecoration(
    //           color: Colors.black,
    //           borderRadius: BorderRadius.circular(16)
    //         ),
    //         child: Hero(
    //           tag: "1",
    //           child: Image.asset("assets/images/avatar.jpg"),
    //       ),
    //           ),
    //           ),
    //       Padding(
    //         padding:const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
    //         child: Text("product.tittle",
    //         style: TextStyle(color:kTextLightColor),),
    //       ),
    //       Text("255",style:TextStyle(fontWeight: FontWeight.bold),),
    //     ],
    //   )
    // ),
  }
}
