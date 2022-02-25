import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:doanbanhang/screens/account/profiles.dart';

class RowAddress extends StatefulWidget {
  const RowAddress({Key? key, required this.iduser}) : super(key: key);
  final int iduser;
  @override
  _RowAddressState createState() => _RowAddressState();
}

class _RowAddressState extends State<RowAddress> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Địa chỉ nhận hàng'),
        backgroundColor: Colors.orange,
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
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.all(20)),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Tên người nhận hàng',
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
            const SizedBox(height: 25),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Tỉnh/Thành phố',
                  hintText: 'Thành phố Hồ Chí Minh',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Quận/Huyện',
                  hintText: 'Quận 10',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Phường/Xã',
                  hintText: 'Phường 12',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Địa chỉ cụ thể (số nhà, toà nhà,...)',
                  hintText: '113 CMT8',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                child: const Text("Cập nhật"),
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
