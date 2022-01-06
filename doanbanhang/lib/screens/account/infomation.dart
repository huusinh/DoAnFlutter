import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:doanbanhang/screens/account/profiles.dart';

class Information extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Information() : super();
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  late int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin cá nhân'),
        //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.all(20)),
            const SizedBox(height: 15),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Họ & tên',
                  hintText: 'Trần Văn A',
                  hintStyle: TextStyle(
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
                    Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(1);
                      },
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
                    Radio(
                      value: 2,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(2);
                      },
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Ngày sinh',
                  hintText: '17/12/2001',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Địa chỉ',
                  hintText: '113 CMT8/Quận 10/TP.HCM',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'watchshop@gmail.com',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Số điện thoại',
                  hintText: '0123456789',
                  hintStyle: TextStyle(
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
                child: const Text(
                  'Cập nhật thông tin',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
