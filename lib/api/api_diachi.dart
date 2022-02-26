import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/diachi.dart';
import '../screens/login/Auth.dart';

Future<DiaChi> fetchAddress() async {
  var diaChi = DiaChi();

  try {
    final response = await http.post(Uri.parse("http://10.0.2.2:8000/api/getAddressAccount"), body: {"_idtaikhoan": "${Auth.user.id}"});
    if (response.statusCode == 200) {
      final jsonRaw = json.decode(response.body);
      diaChi = DiaChi.fromJson(jsonRaw);
    } else {
      throw Exception("Something get wrong! Status code ${response.statusCode}");
    }
    // ignore: empty_catches
  } catch (e) {}

  return diaChi;
}

Future<bool> updateOrcreateAddress(DiaChi diaChi) async {
  try {
    final response = await http.post(Uri.parse("http://10.0.2.2:8000/api/updateOrcreateAddressAccount"),
        body: json.encode(diaChi.toJson()), headers: {"accept": "application/json", "content-type": "application/json"});
    if (response.statusCode == 200) {
      final jsonRaw = json.decode(response.body);
      diaChi = DiaChi.fromJson(jsonRaw);
      return true;
    } else {
      throw Exception("Something get wrong! Status code ${response.statusCode}");
    }
    // ignore: empty_catches
  } catch (e) {}

  return false;
}
