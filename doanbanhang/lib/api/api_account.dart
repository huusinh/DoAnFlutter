import 'dart:async';
import 'dart:convert';

import 'package:doanbanhang/models/account.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<User> apiLogin(String email, String password) async {
  User acc;
  String url = "http://10.0.2.2:8000/api/login";
  var response = await http
      .post(Uri.parse(url), body: {"email": email, "password": password});
  if (response.statusCode == 200) {
    final jsondata = json.decode(response.body);
    acc = User.fromJson(jsondata);
  } else {
    throw Exception("Fail");
  }
  return acc;
}

_setHeader() => {
      'Content-Type': 'application/json; charset=utf-8',
      'Accept': 'application/json'
    };

Future<User> infoAccount(int id) async {
 final response = await http.post(Uri.parse('http://10.0.2.2:8000/api/getInfoAccount'),body: {'iduser':'$id'});
  
if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
   
   return json.decode(response.body);
  } else {
    
    throw Exception('Failed to load data');
  }

  }