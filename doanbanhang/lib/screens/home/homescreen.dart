

import 'package:carousel_slider/carousel_slider.dart';
import 'package:doanbanhang/constants.dart';
//import 'package:doanbanhang/icons/my_flutter_app_icons.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/account/address.dart';
import 'package:doanbanhang/screens/account/infomation.dart';
import 'package:doanbanhang/screens/account/profiles.dart';
import 'package:doanbanhang/screens/cart/cart_screen.dart';
import 'package:doanbanhang/screens/fav_screen/fav_screen.dart';
import 'package:doanbanhang/screens/home/categories.dart';
import 'package:doanbanhang/screens/home/itemcard.dart';
import 'package:doanbanhang/screens/home/sell_of_screen.dart';
import 'package:doanbanhang/screens/login/log_in.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);
   @override 
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft,
            size: 20,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));
            },
        ),
        
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.search,
            size: 20,),
              onPressed: () {},
            padding: EdgeInsets.only(right: 160),
          
        ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.shoppingCart,
            size: 25,),
            color: kTextColor,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
            },
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.bell,
            size: 25,),
            color: kTextColor,
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.user,
            size: 25,),
            color: kTextColor,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>  Profile()));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(),
            items: [
            
          Image.asset('assets/images/banner.jpg',fit: BoxFit.cover,width: 1300,),
          Image.asset('assets/images/banner1.jpg',fit: BoxFit.cover,width: 1300),
          Image.asset('assets/images/banner2.jpg',fit: BoxFit.cover,width: 1300),
         
          ],
          ),
          SizedBox(height: 15,),
          const Categories(),
          
          SizedBox(height: 30,),
          
          Row(
            children:[ 
              SizedBox(width: 5,),
              Text(
            "Sell off",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
            ],
          ),
          SizedBox(height: 30,),
          SellOf(),
        ],
      ),
      
    );
  }
}
