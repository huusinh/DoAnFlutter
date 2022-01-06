import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class NewProduct extends StatelessWidget{
  const NewProduct({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
                color: Colors.pink[50], borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Hero(
                  tag: "1",
                  child: Image.asset("assets/images/avatar.jpg",width: 50,height: 50,),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "product.tittle",
                  style: TextStyle(color: kTextLightColor),
                ),
                Text(
                  "255",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
                color: Colors.pink[50], borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Hero(
                  tag: "1",
                  child: Image.asset("assets/images/avatar.jpg",width: 50,height: 50,),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "product.tittle",
                  style: TextStyle(color: kTextLightColor),
                ),
                Text(
                  "255",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
                color: Colors.pink[50], borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Hero(
                  tag: "1",
                  child: Image.asset("assets/images/avatar.jpg",width: 50,height: 50,),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "product.tittle",
                  style: TextStyle(color: kTextLightColor),
                ),
                Text(
                  "255",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
                color: Colors.pink[50], borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Hero(
                  tag: "1",
                  child: Image.asset("assets/images/avatar.jpg",width: 50,height: 50,),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "product.tittle",
                  style: TextStyle(color: kTextLightColor),
                ),
                Text(
                  "255",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
                color: Colors.pink[50], borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Hero(
                  tag: "1",
                  child: Image.asset("assets/images/avatar.jpg",width: 50,height: 50,),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "product.tittle",
                  style: TextStyle(color: kTextLightColor),
                ),
                Text(
                  "255",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}