import 'package:doanbanhang/api/api_account.dart';
import 'package:doanbanhang/api/api_getcart.dart';
import 'package:doanbanhang/api/api_updatesoluong.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/account.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/cart/cart_item_cart.dart';
import 'package:doanbanhang/screens/invoice_payment/invoice_itemcard.dart';
import 'package:doanbanhang/screens/productdetails/cart_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doanbanhang/models/cart.dart';

class Body extends StatefulWidget {
  final int id;

  const Body({Key? key, required this.id}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var info = "";

  void getInfo(int id) async {
    User user = await infoAccount(id);
    setState(() {
      info = 'Số điện thoại: ' +
          user.sodienthoai.toString() +
          '\n' +
          'Địa chỉ: ' +
          user.diachi.toString();
    });
  }

  void initState() {
    getInfo(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: kDefaultPaddin,
          ),
          SizedBox(
            width: 600,
            height: 250,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  //borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: kTextColor,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thông tin giao hàng:",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPaddin,
                      ),
                      Text(
                        info.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          FutureBuilder<List<Cart>>(
            future: fetchGetCart(widget.id),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('An error has occurred!'),
                );
              } else if (snapshot.hasData) {
                return Column(
                  children: [
                    for (int i = 0; i < snapshot.data!.length; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Dismissible(
                          key: Key(snapshot.data![i].id.toString()),
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
                          child: InvoiceItemCard(
                            image: snapshot.data![i].image.toString(),
                            tittle: snapshot.data![i].tittle.toString(),
                            price: snapshot.data![i].price.toInt(),
                            id: snapshot.data![i].id.toInt(),
                            idsp: snapshot.data![i].idsanpham.toInt(),
                            soluong: snapshot.data![i].soluong.toInt(),
                            iduser: widget.id,
                          ),
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
        ],
      ),
    );
  }
}
