

import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/screens/products/apple.dart';
import 'package:doanbanhang/screens/products/samsung.dart';
import 'package:doanbanhang/screens/products/xiaomi.dart';
//import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 10,
          height: 50,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Apple()));
            },
            color: kTextColor,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              'Apple',
              style: TextStyle(
                  fontSize: 14, letterSpacing: 2.2, color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 5,),
        ButtonTheme(
          minWidth: 10,
          height: 50,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Samsung()));
            },
            color: kTextColor,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              'Samsung',
              style: TextStyle(
                  fontSize: 14, letterSpacing: 2.2, color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 5,),
        ButtonTheme(
          minWidth: 10,
          height: 50,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Xiaomi()));
            },
            color: kTextColor,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              'Xiaomi',
              style: TextStyle(
                  fontSize: 14, letterSpacing: 2.2, color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 5,),
        ButtonTheme(
          minWidth: 10,
          height: 50,
          child: RaisedButton(
            onPressed: () {},
            color: kTextColor,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              'SmartWatch',
              style: TextStyle(
                  fontSize: 14, letterSpacing: 2.2, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
    );
  }
}
