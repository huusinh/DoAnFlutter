import 'package:doanbanhang/api/api_total.dart';
import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:doanbanhang/screens/invoice_payment/body.dart';
import 'package:doanbanhang/screens/login/Auth.dart';
import 'package:flutter/material.dart';
import 'package:doanbanhang/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../api/api_account.dart';
import '../../models/account.dart';
import '../../models/invoice.dart';
import '../invoice_payment/invoice_itemcard.dart';

class InvoiceDetail extends StatefulWidget {
  final Invoice hoaDon;
  const InvoiceDetail({Key? key, required this.hoaDon}) : super(key: key);
  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<InvoiceDetail> {
  String info = "";

  void getInfo() async {
    User user = await infoAccount();
    setState(() {
      info = '''
        Số điện thoại: ${user.sDT}\n
       Địa chỉ: ${user.diaChii!.diachichitiet}, ${user.diaChii!.phuongxa}, \n
       ${user.diaChii!.quanhuyen}, \n
       ${user.diaChii!.tinhthanhpho}, \n
       Tên Người Nhận: ${user.diaChii!.tennguoinhan}
       ''';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: kDefaultPaddin,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    //borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: kTextColor,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Thông tin giao hàng:",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: kDefaultPaddin),
                        Text(
                          info,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: kDefaultPaddin,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: widget.hoaDon.chiTietHoaDon!.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10, //khoang cach giua cac'layout
              ),
              //ngan chan ListView no' cuon xuong' duoc, xai` cho SingleChildScrollView-column
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: InvoiceItemCard(
                  image: widget.hoaDon.chiTietHoaDon![index].sanPham!.image!,
                  tittle: widget.hoaDon.chiTietHoaDon![index].sanPham!.tittle!,
                  price: widget.hoaDon.chiTietHoaDon![index].dongia!,
                  id: widget.hoaDon.chiTietHoaDon![index].id!,
                  idsp: widget.hoaDon.chiTietHoaDon![index].idsanpham!,
                  soluong: widget.hoaDon.chiTietHoaDon![index].soluong!,
                  iduser: Auth.user.id!,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavi(),
    );
  }

  Widget _buildBottomNavi() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      //height:174,
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                        text: "${widget.hoaDon.tongtien}",
                        style: const TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 190,
                  child: ElevatedButton(
                    child: const Text("Cancel"),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        )),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Invoice()));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => HomeScreen(
                      //               iduser: Auth.user.id!,
                      //               account: [],
                      //             )));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink[50],
      foregroundColor: Colors.black,
      elevation: 0,
      title: Column(
        children: const [
          Text(
            "Thanh Toán",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
