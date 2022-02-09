import 'dart:async';
import 'dart:convert';

import 'package:doanbanhang/models/cart.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

  
  Future<int> fetchUpdate(int idchitietgiohang, int capnhat) async {
  final response = await http.post(Uri.parse('http://10.0.2.2:8000/api/updatesoluong'),body: {'idchitietgiohang':'$idchitietgiohang','capnhat':'$capnhat'});
  
if (response.statusCode == 200) {
    
   return 1;
  } else {
    return 0;

  }

}
