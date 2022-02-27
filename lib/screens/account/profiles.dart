import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:doanbanhang/screens/login/log_in.dart';
import 'package:doanbanhang/screens/orders/my_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'infomation.dart';
import 'row_address.dart';
import 'contact_us.dart';

class Profile extends StatelessWidget {
  final int iduser;
  const Profile({Key? key, required this.iduser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen(
                          iduser: iduser,
                          account: [],
                        )));
          },
        ),
        title: const Text('Tài khoản'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 40.0),
          //Avatar and icon camera
          Center(
            child: Stack(
              children: [
                Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 4.0,
                        color: Theme.of(context).scaffoldBackgroundColor),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 10)),
                    ],
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/avatar.jpg'),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(
                            //width: 1.0,
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: const Color(0xFFF5F6F9),
              child: Row(
                children: const [
                  Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                  SizedBox(width: 30),
                  Expanded(
                      child: Text(
                    'Thông tin cá nhân',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Information(
                            iduser: iduser,
                          )),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: const Color(0xFFF5F6F9),
              child: Row(
                children: const [
                  Icon(
                    Icons.home,
                    size: 50,
                  ),
                  SizedBox(width: 30),
                  Expanded(
                      child: Text(
                    'Địa chỉ giao hàng',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RowAddress(
                              iduser: iduser,
                            )));
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: const Color(0xFFF5F6F9),
              child: Row(
                children: const [
                  Icon(
                    Icons.shopping_cart,
                    size: 50,
                  ),
                  SizedBox(width: 30),
                  Expanded(
                      child: Text(
                    'Đơn hàng của tôi',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyOrder(
                              iduser: iduser,
                            )));
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: const Color(0xFFF5F6F9),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactUs(
                              iduser: iduser,
                            )));
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.contact_support,
                    size: 50,
                  ),
                  SizedBox(width: 30),
                  Expanded(
                      child: Text(
                    'Liên hệ với chúng tôi',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login(
                            iduser: iduser,
                          )),
                );
              },
              child: const Text('Logout'),
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
    );
  }
}
