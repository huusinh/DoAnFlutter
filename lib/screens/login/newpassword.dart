import 'package:flutter/material.dart';
import 'log_in.dart';
import 'forgotpassword.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key, required this.iduser}) : super(key: key);
  final int iduser;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Chao cac ban",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mật khẩu mới'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
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
              const Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nhập mật khẩu mới',
                    labelText: 'Nhập mật khẩu mới',
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Xác nhận lại mật khẩu',
                    labelText: 'Xác nhận lại mật khẩu',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text('Trang chủ'),
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
            ],
          ),
        ),
      ),
    );
  }
}
