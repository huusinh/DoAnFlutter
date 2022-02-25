import 'package:doanbanhang/screens/account/infomation.dart';
import 'package:doanbanhang/screens/account/profiles.dart';
import 'package:doanbanhang/screens/account/row_address.dart';
import 'package:doanbanhang/screens/invoice_payment/invoice.dart';
import 'package:doanbanhang/screens/orders/first_page.dart';
import 'package:doanbanhang/screens/orders/invoice_detail.dart';
import 'package:doanbanhang/models/invoice.dart';
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
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Đơn hàng của tôi'),
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
            bottom: TabBar(controller: controller, tabs: [
              Tab(text: 'Tất cả '),
              Tab(text: 'Đơn mới đặt'),
              Tab(text: 'Đơn đã xử lý'),
            ]),
          ),
          body: TabBarView(
            controller: controller,
            children: [
              Firstpage(TrangThai: 1),
              Firstpage(TrangThai: 2),
              Firstpage(TrangThai: 3),
            ],
          ),
        ),
      );
}
