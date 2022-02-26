import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../api/api_diachi.dart';
import '../../models/diachi.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final txtTenNhuoiNhan = TextEditingController();
  final txtSDT = TextEditingController();
  final txtTinhThanhPho = TextEditingController();
  final txtQuanHuyen = TextEditingController();
  final txtPhuongXa = TextEditingController();
  final txtDiaChiChiTiet = TextEditingController();
  late DiaChi diaChi;

  @override
  void initState() async {
    // TODO: implement initState
    super.initState();
    diaChi = await fetchAddress();
    txtTenNhuoiNhan.text = diaChi.tennguoinhan!;
    txtSDT.text = diaChi.sodienthoai!;
    txtTinhThanhPho.text = diaChi.tinhthanhpho!;
    txtQuanHuyen.text = diaChi.quanhuyen!;
    txtPhuongXa.text = diaChi.phuongxa!;
    txtDiaChiChiTiet.text = diaChi.diachichitiet!;
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
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft),
            iconSize: 20,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Địa chỉ giao hàng',
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              TextField(
                controller: txtTenNhuoiNhan,
                decoration: const InputDecoration(
                  labelText: 'Tên người nhận hàng',
                  hintText: 'nhập tên',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtSDT,
                decoration: const InputDecoration(
                  labelText: 'Số điện thoại',
                  hintText: 'nhập số',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtTinhThanhPho,
                decoration: const InputDecoration(
                  labelText: 'Tỉnh/Thành phố',
                  hintText: 'nhập',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtQuanHuyen,
                decoration: const InputDecoration(
                  labelText: 'Quận/Huyện',
                  hintText: 'nhập',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtPhuongXa,
                decoration: const InputDecoration(
                  labelText: 'Phường/Xã',
                  hintText: 'nhập',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtDiaChiChiTiet,
                decoration: const InputDecoration(
                  labelText: 'Địa chỉ cụ thể(số nhà, tòa nhà...)',
                  hintText: 'nhập tên',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ));
  }
}
