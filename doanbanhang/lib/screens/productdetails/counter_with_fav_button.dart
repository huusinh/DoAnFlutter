import 'package:doanbanhang/icons/my_flutter_app_icons.dart';
import 'package:doanbanhang/screens/productdetails/cart_counter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterWithFavBtn extends StatelessWidget{
  const CounterWithFavBtn({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(4.5),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.favorite,color: Colors.white, ),
        ),
      ],
    ) ;
  }
}


