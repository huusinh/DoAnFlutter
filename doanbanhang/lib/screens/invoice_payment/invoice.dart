import 'package:doanbanhang/models/products.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import 'body.dart';

class Invoice extends StatelessWidget{
  const Invoice({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(product: products[0],),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        //height:174,
        decoration: BoxDecoration(
          color: Colors.pink[50],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Total:\n",
                      style: TextStyle(fontSize:30,),
                      children: [
                        TextSpan(
                          text: "\$240",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox( height: 20 ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 190,
                    child: ElevatedButton(
                      child: Text("Check out"),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          )),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => Invoice()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 190,
                    child: ElevatedButton(
                      child: Text("Cancel"),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          )),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => Invoice()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink[50],
      foregroundColor: Colors.black,
      elevation: 0,
      title: Column(
        children: const [
          Text(
            "#madonhang",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}