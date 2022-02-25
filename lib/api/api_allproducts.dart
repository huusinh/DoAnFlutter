import 'dart:async';
import 'dart:convert';

import 'package:doanbanhang/models/products_test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

  
  Future<List<Product>> fetchProduct(String query) async {
  final response = await http.get(Uri.parse('http://10.0.2.2:8000/api/sanpham/ds'));
  
if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    List products = jsonDecode(response.body);
   return products.map<Product>((json) => Product.fromJson(json)).where((product) {
        final titleLower = product.tittle.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();
  } else {
    throw Exception('Failed to load data');
  }

}
