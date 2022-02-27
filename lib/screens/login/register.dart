import 'package:doanbanhang/api/api_accountdangki.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'log_in.dart';
import 'package:doanbanhang/screens/login/Auth.dart';

class Register extends StatelessWidget {
  final int iduser;
  Register({Key? key, required this.iduser}) : super(key: key);
  TextEditingController ten = TextEditingController();
  TextEditingController taikhoan = TextEditingController();
  TextEditingController matkhau = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Chao cac ban",
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
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
                              iduser: iduser,
                            )));
              },
            ),
            title: const Text('Đăng kí tài khoản')),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  'assets/images/bannerLogin.png',
                  width: 100,
                  height: 200,
                ),
              ),
              const Text(
                'Đăng kí tài khoản mới ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white12.withOpacity(1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: ten,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Tên user',
                      labelText: 'Tên user',
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                  ),
                ),
              ),
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
                      hintText: 'Email',
                      labelText: 'Email ',
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white12.withOpacity(1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: matkhau,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      labelText: 'Password ',
                      prefixIcon: Icon(Icons.security),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () async {
                    final kq =
                        await apiDangki(ten.text, taikhoan.text, matkhau.text);
                    if (kq.email.isNotEmpty) {
                      Auth.user = kq;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login(
                                    iduser: iduser,
                                  )));
                    }
                  },
                  child: const Text('Đăng kí'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(color: Colors.orange),
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
