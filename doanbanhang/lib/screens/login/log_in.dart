


import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'forgotpassword.dart';

class Login extends StatefulWidget{
 const Login({Key? key}): super(key: key);
 @override
 Login1 createState()=> Login1();
}

class Login1 extends State<Login>{
  bool isHiddenPassword=true;
 

@override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: " Chao cac ban",
     home: Scaffold(
       backgroundColor: Colors.pinkAccent[80],
       appBar: AppBar(
          //title: const Text('Đăng Nhập')
          foregroundColor: kTextLightColor,
          ),
       body:  Center (
         child: ListView( children: [
           Padding(
             padding: const EdgeInsets.all(15), 
             child: Image.asset('assets/images/bannerLogin.png', width: 150, height: 200,
             ),
           ),
         const Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Tài khoản' ,
              labelText:'Tài khoản' ,
              prefixIcon: Icon(Icons.account_circle),
            ),
          ),
          ),
           Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            obscureText: isHiddenPassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
               hintText:'Mật khẩu',
              labelText: 'Mật khẩu',
              prefixIcon: Icon(Icons.security),
              suffixIcon: InkWell(
                onTap: _TongglePasswordView,
                child: Icon(Icons.visibility,
              ),
            
              ),
            ),
          ),
          ),
              TextButton(
              child: Text('Quên mật khẩu',
              textAlign: TextAlign.end,
              style: TextStyle(
              color: Colors.red,
              fontSize: 15,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              ) ,
            ),
            onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=>ForgotPass()),
               );
               },        
               ),
           Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: const Text('Đăng Nhập'),
            ),
           ), 
           Text('Bạn chưa có tài khoản ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                
              ),
              ),
               TextButton(
              child: Text('Đăng kí',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              ) ,
            ),
            onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=>Register()),
               );
               },        
               ),
         Padding
         (padding: EdgeInsets.all(15),
         child: SizedBox(
           height: 30,
           child: ElevatedButton.icon(
             onPressed: (){},
            icon: Icon(Icons.facebook),
             label: Text("Dang nhap bằng Facebook"),

           ),
         ),
         ),        
          Padding
         (padding: EdgeInsets.all(15),
         child: SizedBox(
           height: 30,
           child: ElevatedButton.icon(
             onPressed: (){},
            icon: Icon(Icons.mail),
             label: Text("Dang nhap bằng Gmail"),
           ),
         ),
         ),      
           ],
           ),
         ),
       ), 
     );
 }
 void _TongglePasswordView(){
   setState(() { isHiddenPassword=!isHiddenPassword;});
 }
 }
