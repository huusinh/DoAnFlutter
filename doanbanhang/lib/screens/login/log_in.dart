import 'package:doanbanhang/api/api_account.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'forgotpassword.dart';

import 'package:doanbanhang/models/account.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Logincreen createState() => Logincreen();
}

class Logincreen extends State<Login> {
  bool isHiddenPassword = true;
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  Future Login() async
  {
    Map<String ,String > data ={
      'email' : email.text,
      'password'  : password.text,
      
    };
    List<User> res = await login(data);
    if( res.length ==1)
    {
      print("chao cac ban");
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(account: res)));
    }
    else
    {
      print("Khong thanh cong");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Chao cac ban",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đăng Nhập'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/hublot1.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/bannerLogin.png',
                    width: 100,
                    height: 200,
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white12.withOpacity(1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            controller: email,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Tài khoản',
                              labelText: 'Tài khoản',
                              prefixIcon: Icon(Icons.account_circle),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10.withOpacity(1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            controller: password,
                            obscureText: isHiddenPassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Mật khẩu',
                              labelText: 'Mật khẩu',
                              prefixIcon: Icon(Icons.security),
                              suffixIcon: InkWell(
                                onTap: _TongglePasswordView,
                                child: Icon(
                                  Icons.visibility,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Quên mật khẩu',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPass()),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () {
                           Login();
                          },
                          child: const Text('Đăng Nhập'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.orange),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side: BorderSide(color: Colors.orange),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Bạn chưa có tài khoản ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Đăng kí',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.facebook),
                            label: Text("Dang nhap bằng Facebook"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  side: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.mail),
                            label: Text("Dang nhap bằng Gmail"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  side: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _TongglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
