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
import 'package:doanbanhang/screens/home/categories.dart';
import 'package:doanbanhang/screens/home/itemcard.dart';
import 'package:doanbanhang/screens/home/new_product_screen.dart';
import 'package:doanbanhang/screens/home/sell_of_screen.dart';
import 'package:doanbanhang/screens/login/log_in.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:doanbanhang/screens/products/apple.dart';
import 'package:doanbanhang/screens/products/samsung.dart';
import 'package:doanbanhang/screens/search_product/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  final List<User> account;
  final int iduser;
<<<<<<< HEAD
  const HomeScreen({Key? key, required this.account, required this.iduser})
      : super(key: key);
=======
  const HomeScreen({Key? key, required this.account, required this.iduser}) : super(key: key);
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Login(
                          iduser: widget.iduser,
                        )));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.search,
              size: 20,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchProduct(
                            iduser: widget.iduser,
                          )));
<<<<<<< HEAD
=======
            },
            padding: EdgeInsets.only(right: 160),
          ),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.shoppingCart,
              size: 25,
            ),
            color: kTextColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CartScreen(
                            iduser: widget.iduser,
                          )));
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
            },
            padding: EdgeInsets.only(right: 200),
          ),
          IconButton(
            icon: const Icon(
<<<<<<< HEAD
              FontAwesomeIcons.shoppingCart,
              size: 25,
            ),
            color: kTextColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CartScreen(
                            iduser: widget.iduser,
                          )));
            },
=======
              FontAwesomeIcons.bell,
              size: 25,
            ),
            color: kTextColor,
            onPressed: () {},
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
          ),
          // IconButton(
          //   icon: const Icon(
          //     FontAwesomeIcons.bell,
          //     size: 25,
          //   ),
          //   color: kTextColor,
          //   onPressed: () {},
          // ),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.user,
              size: 25,
            ),
            color: kTextColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Profile(
                            iduser: widget.iduser,
                          )));
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
              Image.asset(
                'assets/images/banner.jpg',
                fit: BoxFit.cover,
                width: 1300,
              ),
<<<<<<< HEAD
              Image.asset('assets/images/banner1.jpg',
                  fit: BoxFit.cover, width: 1300),
              Image.asset('assets/images/banner2.jpg',
                  fit: BoxFit.cover, width: 1300),
=======
              Image.asset('assets/images/banner1.jpg', fit: BoxFit.cover, width: 1300),
              Image.asset('assets/images/banner2.jpg', fit: BoxFit.cover, width: 1300),
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Categories(
            iduser: widget.iduser,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
<<<<<<< HEAD
            children: [
              SizedBox(
                width: 5,
              ),
=======
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(
              //   width: 5,
              // ),
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
              Text(
                "Sell off",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
<<<<<<< HEAD
=======
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Samsung(iduser: widget.iduser)));
                },
                child: Text(
                  "See all",
                  style: TextStyle(color: Colors.black54),
                ),
              )
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SellOf(
            iduser: widget.iduser,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
<<<<<<< HEAD
            children: [
              SizedBox(
                width: 5,
              ),
=======
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(
              //   width: 5,
              // ),
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
              Text(
                "New Product",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
<<<<<<< HEAD
=======
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Apple(iduser: widget.iduser)));
                },
                child: Text(
                  "See all",
                  style: TextStyle(color: Colors.black54),
                ),
              )
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
            ],
          ),
          SizedBox(
            height: 30,
          ),
          NewProduct(
            iduser: widget.iduser,
          ),
        ],
      ),
      bottomNavigationBar: Theme(
<<<<<<< HEAD
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
=======
        data: Theme.of(context).copyWith(iconTheme: IconThemeData(color: Colors.white)),
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
        child: CurvedNavigationBar(
            items: items,
            color: Colors.blue,
            buttonBackgroundColor: Colors.pink,
            backgroundColor: Colors.transparent,
            height: 60,
            onTap: (index) => setState(() {})),
      ),
    );
  }
}
