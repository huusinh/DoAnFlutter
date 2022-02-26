import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:doanbanhang/screens/account/profiles.dart';

import '../../api/api_diachi.dart';
import '../../models/diachi.dart';

class RowAddress extends StatefulWidget {
  const RowAddress({Key? key, required this.iduser}) : super(key: key);
  final int iduser;
  @override
  _RowAddressState createState() => _RowAddressState();
}

class _RowAddressState extends State<RowAddress> {
  final txtTenNhuoiNhan = TextEditingController();
  final txtSDT = TextEditingController();
  final txtTinhThanhPho = TextEditingController();
  final txtQuanHuyen = TextEditingController();
  final txtPhuongXa = TextEditingController();
  final txtDiaChiChiTiet = TextEditingController();
  late DiaChi diaChi;
  Future<void> khoiTao() async {
    diaChi = await fetchAddress();
    setState(() {
      txtTenNhuoiNhan.text = diaChi.tennguoinhan!;
      txtSDT.text = diaChi.sodienthoai!;
      txtTinhThanhPho.text = diaChi.tinhthanhpho!;
      txtQuanHuyen.text = diaChi.quanhuyen!;
      txtPhuongXa.text = diaChi.phuongxa!;
      txtDiaChiChiTiet.text = diaChi.diachichitiet!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    khoiTao();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    txtTenNhuoiNhan.dispose();
    txtSDT.dispose();
    txtTinhThanhPho.dispose();
    txtQuanHuyen.dispose();
    txtPhuongXa.dispose();
    txtDiaChiChiTiet.dispose();
  }

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
            Center(
              child: TextField(
                controller: txtTenNhuoiNhan,
                decoration: const InputDecoration(
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
            Center(
              child: TextField(
                controller: txtSDT,
                decoration: const InputDecoration(
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
            Center(
              child: TextField(
                controller: txtTinhThanhPho,
                decoration: const InputDecoration(
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
            Center(
              child: TextField(
                controller: txtQuanHuyen,
                decoration: const InputDecoration(
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
            Center(
              child: TextField(
                controller: txtPhuongXa,
                decoration: const InputDecoration(
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
            Center(
              child: TextField(
                controller: txtDiaChiChiTiet,
                decoration: const InputDecoration(
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
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    )),
                onPressed: () async {
                  diaChi.tennguoinhan = txtTenNhuoiNhan.text;
                  diaChi.sodienthoai = txtSDT.text;
                  diaChi.tinhthanhpho = txtTinhThanhPho.text;
                  diaChi.quanhuyen = txtQuanHuyen.text;
                  diaChi.phuongxa = txtPhuongXa.text;
                  diaChi.diachichitiet = txtDiaChiChiTiet.text;
                  if (await updateOrcreateAddress(diaChi)) {
                    thongBaoScaffoldMessenger(context, "Cap nhat thanh cong");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void thongBaoScaffoldMessenger(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text(
      text,
      textAlign: TextAlign.center,
    )));
}
