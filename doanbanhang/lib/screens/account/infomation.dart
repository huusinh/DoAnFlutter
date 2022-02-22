import 'package:doanbanhang/screens/login/Auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:doanbanhang/screens/account/profiles.dart';

class Information extends StatefulWidget {
  const Information({Key? key, required this.iduser}) : super(key: key);
  final int iduser;
  @override
  _InformationState createState() => _InformationState();
}

enum GioiTinh { Nam, Nu }

class _InformationState extends State<Information> {
  GioiTinh selectedRadio =
      Auth.user.gioiTinh == "nam" ? GioiTinh.Nam : GioiTinh.Nu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin cá nhân'),
        backgroundColor: Colors.orange,
        //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profile(
                          iduser: widget.iduser,
                        )));
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profile(
                          iduser: widget.iduser,
                        )));
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.all(20)),
            const SizedBox(height: 15),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: Auth.user.name,
                  hintText: 'Trần Văn A',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Giới tính',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                ButtonBar(
                  children: [
                    const Text(
                      'Nam',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Radio<GioiTinh>(
                      value: GioiTinh.Nam,
                      groupValue: selectedRadio,
                      onChanged: (val) => setState(() => selectedRadio = val!),
                    ),
                  ],
                ),
                ButtonBar(
                  children: [
                    const Text(
                      'Nữ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Radio<GioiTinh>(
                      value: GioiTinh.Nu,
                      groupValue: selectedRadio,
                      onChanged: (val) => setState(() => selectedRadio = val!),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: Auth.user.ngaySinh,
                  hintText: '17/12/2001',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: Auth.user.diachi,
                  hintText: '113 CMT8/Quận 10/TP.HCM',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: Auth.user.email,
                  hintText: 'watchshop@gmail.com',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: Auth.user.sodienthoai,
                  hintText: '0123456789',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                child: Text("Cập nhật thông tin"),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    )),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Invoice()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
