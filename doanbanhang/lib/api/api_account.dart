import 'dart:async';
import 'dart:convert';

import 'package:doanbanhang/models/account.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<User>> login(var data) async {
  List<User> acc = [];
  String url = "http://10.0.2.2:8000/api/login";
  var response = await http.post(Uri.parse(url),
      headers: _setHeader(), body: jsonEncode(data));
  print(data);
  if (response.statusCode == 200) {
    dynamic jsondata = json.decode(response.body);
    dynamic data = jsondata["data"];
    data.forEach((i) {
      acc.add(User.fromJson(i));
    });
    print(acc.length);
    return acc;
  } else {
    print(response.body);
    throw Exception("Fail");
  }
}
_setHeader() => {
      'Content-Type': 'application/json; charset=utf-8',
      'Accept': 'application/json'
    };

Future<User> infoAccount(int id) async {
 final response = await http.post(Uri.parse('http://10.0.2.2:8000/api/getInfoAccount'),body: {'id':'$id'});
  
if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
   
   return User.fromJson(json.decode(response.body));
  } else {
    
    throw Exception('Failed to load data');
  }

  }