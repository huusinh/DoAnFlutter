import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/productdetails/cart_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: 600,
            height: 100,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  //borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: kTextColor,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "mã đơn hàng: #12345",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          SizedBox(
            width: 600,
            height: 200,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  //borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: kTextColor,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thông tin giao hàng:",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPaddin,
                      ),
                      Text(
                        "Số điện thoại:0345678456 \nĐịa chỉ: số 144/5 Biên Hòa, Đồng nai",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                    BoxShadow(
                      color: kTextColor,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                    ),
                    child: Image.asset("ầdg"),
                  ),
                ),
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ága",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: "\$${12}",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                      children: [
                  TextSpan(
                      text: " x${14}",
                      style: TextStyle(color: kTextColor)),
                ],
                    ),
                    
                  ),
                  SizedBox(height: 10,),
                  
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
