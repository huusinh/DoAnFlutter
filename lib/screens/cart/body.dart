import 'package:doanbanhang/api/api_apple.dart';
import 'package:doanbanhang/api/api_getcart.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/cart.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/home/itemcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cart_item_cart.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.iduser}) : super(key: key);
final int iduser;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
       child: FutureBuilder<List<Cart>>(
        future: fetchGetCart(iduser),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Dismissible(
            key: Key(snapshot.data![index].id.toString()),
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
              image: snapshot.data![index].image.toString(),
              tittle: snapshot.data![index].tittle.toString(),
              price: snapshot.data![index].price.toInt(),
              id: snapshot.data![index].id.toInt(),
              idsp: snapshot.data![index].idsanpham.toInt(),
              soluong: snapshot.data![index].soluong.toInt(), iduser: iduser,
            ),
          ),
        ),
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
 