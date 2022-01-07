import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'log_in.dart';

class Register extends StatelessWidget{
 const Register({Key? key}): super(key: key);
@override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: " Chao cac ban",
     home: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orange,
         leading: IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft,
            size: 20,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));
            },
        ),
          title: const Text('Đăng kí tài khoản')),
       body: Center(
         child: ListView( children: [
           Padding(
             padding: const EdgeInsets.all(15), 
             child: Image.asset('assets/images/bannerLogin.png' ,width: 100, height: 200,),
           ),
         Text('Đăng kí tài khoản mới ?',
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
              hintText: 'Tên tài khoản hoặc số điện thoại' ,
              labelText: 'Tên tài khoản hoặc số điện thoại',
            ),
          ),
          ),
          const Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
               hintText:'Mật khẩu',
              labelText: 'Mật khẩu',
            ),
          ),
          ),
          const Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:'Nhập lại mật khẩu',
              labelText: 'Nhập lại mật khẩu',
            ),
          ),
          ),
           const Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:'Email',
              labelText: 'Email',
            ),
          ),
          ),
           Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: (){},
              child: const Text('Đăng kí'),
               style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
            ),
           ),
           ],
           ),
         ),
       ), 
     );
 }
 }
