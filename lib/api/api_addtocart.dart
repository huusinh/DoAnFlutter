import 'dart:async';
import 'dart:convert';

import 'package:doanbanhang/models/products_test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

  
  Future<int> fetchAddtoCart(String tkmuahang, int idsanpham) async {
    int status=0;
  final response = await http.post(Uri.parse('http://10.0.2.2:8000/api/addtocart'),body: {'tkmuahang':'$tkmuahang','idsanpham':'$idsanpham'});
  
if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
   return status=1;
  } else {
    return status;
  }

}
