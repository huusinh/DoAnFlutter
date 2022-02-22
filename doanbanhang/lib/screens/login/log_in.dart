import 'package:doanbanhang/api/api_account.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:doanbanhang/screens/login/Auth.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'forgotpassword.dart';
import 'package:doanbanhang/models/account.dart';

class Login extends StatefulWidget {
  final int iduser;
  const Login({Key? key, required this.iduser}) : super(key: key);
  @override
  Logincreen createState() => Logincreen();
}

class Logincreen extends State<Login> {
  bool isHiddenPassword = true;
  TextEditingController taikhoan = TextEditingController(text: "linhquan@gmail.com");
  TextEditingController matkhau = TextEditingController(text: "123456");
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
            image: DecorationImage(image: AssetImage('assets/images/hublot1.png'), fit: BoxFit.cover),
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
                            controller: taikhoan,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Tài khoản',
                              labelText: 'Tài khoản',
                              prefixIcon: Icon(Icons.account_circle),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10.withOpacity(1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            controller: matkhau,
                            obscureText: isHiddenPassword,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: 'Mật khẩu',
                              labelText: 'Mật khẩu',
                              prefixIcon: const Icon(Icons.security),
                              suffixIcon: InkWell(
                                onTap: () => setState(() => isHiddenPassword = !isHiddenPassword),
                                child: const Icon(
                                  Icons.visibility,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        child: const Text(
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
                                builder: (context) => ForgotPass(
                                      iduser: widget.iduser,
                                    )),
                          );
                        },
                      ),
                      Padding(
                        //login
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () async {
                            final kq = await apiLogin(taikhoan.text, matkhau.text);
                            if (kq.email.isNotEmpty) {
                              Auth.user = kq;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                            iduser: widget.iduser,
                                            account: [],
                                          )));
                            }
                          },
                          child: const Text('Đăng Nhập'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side: const BorderSide(color: Colors.orange),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Bạn chưa có tài khoản ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        child: const Text(
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
                            MaterialPageRoute(
                                builder: (context) => Register(
                                      iduser: widget.iduser,
                                    )),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook),
                            label: const Text("Dang nhap bằng Facebook"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  side: const BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.mail),
                            label: const Text("Dang nhap bằng Gmail"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  side: const BorderSide(color: Colors.orange),
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
}
