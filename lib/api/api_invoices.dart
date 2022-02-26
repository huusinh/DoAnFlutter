import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../models/Cart.dart';
import '../models/invoice.dart';
import '../screens/login/Auth.dart';

class Invoices extends ChangeNotifier {
  static String host = "http://10.0.2.2:8000/api/";
  List<Invoice> invoices = [];

  static _setHeader() => {'Content-type': 'application/json; charset=utf-8', 'Accept': 'application/json'};
  // static Future<bool> createInvoice(var data) async {
  //   var url = host + "invoice/newInvoice";
  //   http.Response response = await http.post(Uri.parse(url), headers: _setHeader(), body: jsonEncode(data));
  //   if (response.statusCode == 200) {
  //     print(response.statusCode);
  //     return true;
  //   } else {
  //     print(response.statusCode);
  //     return false;
  //   }
  // }

  // static Future<String> getInvoiceId(var data) async {
  //   String invoiceId;
  //   var url = host + "invoice/getInvoiceId";
  //   http.Response response = await http.post(Uri.parse(url), headers: _setHeader(), body: jsonEncode(data));
  //   if (response.statusCode == 200) {
  //     dynamic jsondata = json.decode(response.body);
  //     dynamic id = jsondata["id"];
  //     invoiceId = id.toString();
  //     return invoiceId;
  //   } else {
  //     throw Exception('khong thanh cong');
  //   }
  // }

  // static Future<void> addInvoiceDetail(var data) async {
  //   print(data);
  //   var url = host + "invoiceDetail/newInvoiceDetail";
  //   http.Response response = await http.post(Uri.parse(url), headers: _setHeader(), body: jsonEncode(data));
  //   print(response.statusCode);
  //   if (response.statusCode == 200) {
  //     print("them thanh cong");
  //   } else {
  //     throw Exception('khong thanh cong');
  //   }
  // }

  Future<List<Invoice>> getInvoiceListByAccountId(int trangThai) async {
    var url = host + "invoice/getListInvoiceByAccountId";
    final response = await http.post(Uri.parse(url), body: {"_idtaikhoan": "1", "_TrangThai": "$trangThai"});
    if (response.statusCode == 200) {
      List jsonRaw = json.decode(response.body);
      invoices = jsonRaw.map((e) => Invoice.fromJson(e)).toList();
    } else {
      throw Exception('khong thanh cong');
    }
    return invoices;
  }
}
