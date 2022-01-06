
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'log_in.dart';
import 'newpassword.dart';
class ForgotPass extends StatelessWidget{
 const ForgotPass({Key? key}): super(key: key);
 @override 
Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: " Chao cac ban",
     home: Scaffold(
       appBar: AppBar(
          title: const Text('Quên mật khẩu'),
          leading: IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft,
            size: 20,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));
            },
        ),
        ),
       body: Center(
         child: ListView( children: [
           Padding(
             padding: const EdgeInsets.all(15), 
             child: Image.asset('assets/images/bannerLogin.png' ,width: 100, height: 200,),
           ),
         Text('Quên mật khẩu? ' ,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                
              ),
              ),
         const Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nhập email hoặc số điện thoại' ,
              labelText: 'Nhập email hoặc số điện thoại',
            ),
          ),
          ),
           Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: (){},
              child: const Text('Lấy mã'),
              
            ),
           ),
            Text('Nhập mã xác nhận ' ,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              ),
               const Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '',
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPassword()));},
              child: const Text('Xác nhận'),
              
            ),
           ),
           ],
           ),
         ),
       ), 
     );
 }
 }
