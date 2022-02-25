import 'package:doanbanhang/api/api_accountcapnhat.dart';
import 'package:doanbanhang/models/account.dart';
import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:doanbanhang/screens/login/Auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:doanbanhang/screens/account/profiles.dart';

class Information extends StatefulWidget {
<<<<<<< HEAD
  const Information({Key? key, required this.iduser}) : super(key: key);
  final int iduser;
=======
  final int iduser;
  // ignore: use_key_in_widget_constructors
  Information({Key? key, required this.iduser}) : super(key:key);

>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
  @override
  _InformationState createState() => _InformationState();
}

enum GioiTinh { Nam, Nu }

class _InformationState extends State<Information> {
<<<<<<< HEAD
  GioiTinh selectedRadio =
      Auth.user.gioiTinh == "nam" ? GioiTinh.Nam : GioiTinh.Nu;
=======
  GioiTinh selectedRadio = Auth.user.gioiTinh == 1 ? GioiTinh.Nam : GioiTinh.Nu;
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8

  TextEditingController ten = TextEditingController(text: Auth.user.name.toString());
  TextEditingController taikhoan = TextEditingController(text: Auth.user.email.toString());
  TextEditingController ngaysinh = TextEditingController(text: Auth.user.ngaySinh.toString());
  TextEditingController diachi = TextEditingController(text: Auth.user.diaChi.toString());
  TextEditingController sdt = TextEditingController(text: Auth.user.sDT.toString());
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
<<<<<<< HEAD
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
=======
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(iduser: widget.iduser,)));
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
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
                controller: ten,
                decoration: InputDecoration(
                  labelText: Auth.user.name,
                  hintText: Auth.user.name.toString(),
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
                controller: ngaysinh,
                decoration: InputDecoration(
                  labelText: Auth.user.ngaySinh,
                  hintText: Auth.user.ngaySinh.toString(),
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
                controller: diachi,
                decoration: InputDecoration(
                  labelText: Auth.user.diaChi,
                  hintText: Auth.user.diaChi.toString(),
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
                controller: taikhoan,
                decoration: InputDecoration(
                  labelText: Auth.user.email,
                  hintText: Auth.user.email.toString(),
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
                controller: sdt,
                decoration: InputDecoration(
                  labelText: Auth.user.sDT,
                  hintText: Auth.user.sDT.toString(),
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
<<<<<<< HEAD
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
=======
                child: const Text(
                  'Cập nhật thông tin',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  final user = Auth.user;
                  user.name = ten.text;
                  user.email = taikhoan.text;
                  user.gioiTinh = selectedRadio == GioiTinh.Nam ? 1 : 0;
                  user.ngaySinh = ngaysinh.text;
                  user.diaChi = diachi.text;
                  user.sDT = sdt.text;

                  Auth.user = await apiCapnhat(user);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(iduser: widget.iduser, account: [],)));
>>>>>>> 2ffcc65511d2d5efe22bf1d0eed58ea54bbf6bc8
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
