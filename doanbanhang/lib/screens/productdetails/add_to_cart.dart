import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/icons/my_flutter_app_icons.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/invoice_payment/invoice.dart';
import 'package:doanbanhang/screens/orders/my_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddToCart extends StatelessWidget{
  const AddToCart({Key? key,
  required this.product,
  }) : super(key: key);
final Product product;
@override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
                  child: Row(
                    children:<Widget> [
                      Container(
                        margin: EdgeInsets.only(right: kDefaultPaddin),
                        height:50,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: product.color,
                          ),
                        ),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.shoppingCart,
                          color: product.color,),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                            color: product.color,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Invoice()));
                            },
                            child: Text(
                              "Buy Now".toUpperCase(),
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                    ],
                  ),
                ) ;
  }
}