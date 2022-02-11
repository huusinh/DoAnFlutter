
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/account.dart';
//import 'package:doanbanhang/icons/my_flutter_app_icons.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/account/address.dart';
import 'package:doanbanhang/screens/account/infomation.dart';
import 'package:doanbanhang/screens/account/profiles.dart';
import 'package:doanbanhang/screens/cart/cart_screen.dart';
import 'package:doanbanhang/screens/fav_screen/fav_screen.dart';
import 'package:doanbanhang/screens/home/categories.dart';
import 'package:doanbanhang/screens/home/itemcard.dart';
import 'package:doanbanhang/screens/home/new_product_screen.dart';
import 'package:doanbanhang/screens/home/sell_of_screen.dart';
import 'package:doanbanhang/screens/login/log_in.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:doanbanhang/screens/search_product/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);
   @override 
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  int index=0;
  final screens=[
    HomeScreen(),
    FavScreen(),
    Profile(),
  ];
   @override
  Widget build(BuildContext context) {
  
    final items =<Widget>[
      Icon(Icons.home, size:30),
      Icon(Icons.favorite, size:30),
      Icon(Icons.person, size:30),
    ];
    return Scaffold(
      extendBody: true,
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchProduct()));
              },
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
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
            ),
            items: [
            
          Image.asset('assets/images/banner.jpg',fit: BoxFit.cover,width: 1300,),
          Image.asset('assets/images/banner1.jpg',fit: BoxFit.cover,width: 1300),
          Image.asset('assets/images/banner2.jpg',fit: BoxFit.cover,width: 1300),
         
          ],
          
          ),
          SizedBox(height: 30,),
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
           SizedBox(height: 30,),
            Row(
            children:[ 
              SizedBox(width: 5,),
              Text(
            "New Product",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
            ],
          ),
           SizedBox(height: 30,),
          NewProduct(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme:IconThemeData(color: Colors.white)
        ),
      child:CurvedNavigationBar(
        items: items,
        color: Colors.blue,
        buttonBackgroundColor: Colors.pink,
        backgroundColor:Colors.transparent,
        height: 60,
        onTap: (index) => setState(() {
          screens;
        })
      ),
      ),
    );
  }
}
