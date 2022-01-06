import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/products/apple.dart';
//import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:flutter/material.dart';

class SellOf extends StatefulWidget {
    
  const SellOf({Key? key}) : super(key: key);

  @override
  _SellOf createState() => _SellOf();
}

class _SellOf extends State<SellOf> {
 
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
        ],
      ),
    );
  }
}
