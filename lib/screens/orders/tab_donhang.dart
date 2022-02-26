import 'package:doanbanhang/models/invoice.dart';
import 'package:doanbanhang/screens/login/Auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../api/api_invoices.dart';
import 'invoice_detail.dart';

class TabDonHang extends StatelessWidget {
  const TabDonHang({
    Key? key,
    required this.trangThai,
  }) : super(key: key);
  final int trangThai;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<Invoices>(
      builder: (context, apiInvoices, child) => FutureBuilder<List<Invoice>>(
          future: apiInvoices.getInvoiceListByAccountId(trangThai),
          builder: ((context, snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
            }
            if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return const Center(child: Text("Khong co' hoa' don nao`"));
              }
              return ListView.separated(
                itemCount: snapshot.data!.length,
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
                                  hoaDon: snapshot.data![index],
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
                          title: Text(
                            "${snapshot.data![index].id}",
                            style: const TextStyle(color: Colors.black),
                          ),
                          trailing: Text(
                            (snapshot.data![index].trangThai) == 1 ? "Mới đặt" : "Đang xử lý",
                            style: const TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ))),
              );
            }
            return const Center(child: CircularProgressIndicator());
          })),
    ));
  }
}
