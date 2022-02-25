import 'package:doanbanhang/screens/login/Auth.dart';
import 'package:flutter/material.dart';
import 'invoice_detail.dart';

class TabDonHang extends StatelessWidget {
  const TabDonHang({
    Key? key,
    required this.trangThai,
  }) : super(key: key);
  final int trangThai;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20, //khoang cach giua cac'layout
      ),
      itemBuilder: (context, index) => ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)), side: BorderSide(color: Colors.blue))),
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InvoiceDetail(
                        iduser: Auth.user.id!,
                      )),
            );
          },
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                leading: const Icon(
                  Icons.shop_2,
                  color: Colors.blue,
                ),
                title: const Text(
                  "Mã đơn hàng",
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Text(
                  "$trangThai",
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ))),
    );
  }
}
