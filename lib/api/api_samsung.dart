import 'dart:async';
import 'dart:convert';

import 'package:doanbanhang/models/products_test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


  Future<List<Product>> fetchSamsung() async {
  final response = await http.get(Uri.parse('http://10.0.2.2:8000/api/getProductbyProductType/2'));
  

if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    List parsed = jsonDecode(response.body);
   return parsed.map<Product>((json) => Product.fromJson(json)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }

}
