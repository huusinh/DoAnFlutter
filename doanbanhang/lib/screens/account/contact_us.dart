import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:doanbanhang/screens/account/profiles.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key,required this.iduser }) : super(key: key);
final int iduser;
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liên hệ với chúng tôi'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile(iduser: widget.iduser,)));
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20),
        child: ListView(
          children: const [
            Padding(padding: EdgeInsets.all(20)),
            Center(
              child: Text(
                'Tên Shop: Watch Shop',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                'Địa chỉ: 113 CMT8/ Phường 12/ Quận 10/ Tp.HCM.',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                'Email:Watchshop@gmail.com',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
