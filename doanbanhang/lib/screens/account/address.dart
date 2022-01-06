import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Address extends StatelessWidget{
  const Address({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Địa chỉ giao hàng', textAlign: TextAlign.center,),
      ),
      body:ListView(
        padding: EdgeInsets.all(32),
        children: const [
          TextField(
            decoration: InputDecoration(
              labelText: 'Tên người nhận hàng',
              hintText: 'nhập tên',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 24,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Số điện thoại',
              hintText: 'nhập số',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 24,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Tỉnh/Thành phố',
              hintText: 'nhập',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 24,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Quận/Huyện',
              hintText: 'nhập',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 24,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Phường/Xã',
              hintText: 'nhập',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 24,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Địa chỉ cụ thể(số nhà, tòa nhà...)',
              hintText: 'nhập tên',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ) ,
    );
  }
}