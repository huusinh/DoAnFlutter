import 'package:doanbanhang/screens/account/profiles.dart';
import 'package:doanbanhang/screens/orders/tab_donhang.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  final int iduser;

  const MyOrder({Key? key, required this.iduser}) : super(key: key);
  @override
  _MyOderState createState() => _MyOderState();
}

class _MyOderState extends State<MyOrder> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Đơn hàng của tôi'),
          backgroundColor: Colors.orange,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Profile(
                            iduser: widget.iduser,
                          )));
            },
          ),
          centerTitle: true,
          bottom:
              TabBar(isScrollable: true, controller: controller, tabs: const [
            Tab(text: 'Tất cả '),
            Tab(text: 'Đơn mới đặt'),
            Tab(text: 'Đơn đã xử lý'),
            Tab(text: 'Đơn đang vận chuyển'),
            Tab(text: 'Đơn đã hoàn thành'),
            Tab(text: 'Đơn đã huỷ'),
          ]),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            TabDonHang(trangThai: 0),
            TabDonHang(trangThai: 1),
            TabDonHang(trangThai: 2),
            TabDonHang(trangThai: 3),
            TabDonHang(trangThai: 4),
            TabDonHang(trangThai: 5),
          ],
        ),
      );
}
