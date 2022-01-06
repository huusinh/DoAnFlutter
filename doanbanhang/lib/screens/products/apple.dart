

import 'package:carousel_slider/carousel_slider.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:doanbanhang/screens/home/itemcard.dart';
import 'package:doanbanhang/screens/login/log_in.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class Apple extends StatelessWidget{
  const Apple({Key? key}) : super(key: key);

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ));
            },
        ),
    ),
    body: appleWidget(),
     );
  }
}

class appleWidget extends StatelessWidget {
  const appleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 30,),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: 
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context,index)=>ItemCard(
                product: products[index],press: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(product: products[index]))),
              ),
            ),
          ),
          ),
      ],
    ),
    );
  }
}