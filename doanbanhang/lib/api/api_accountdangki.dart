import 'dart:async';
import 'dart:convert';

import 'package:doanbanhang/models/account.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<User> apiDangki(String name, String email, String password) async {
  User acc;
  String url = "http://10.0.2.2:8000/api/dangki";
  var response = await http.post(Uri.parse(url), body: {
    "name": name,
    "email": email,
    "password": password,
  });
  if (response.statusCode == 200) {
    final jsondata = json.decode(response.body);
    acc = User.fromJson(jsondata);
  } else {
    throw Exception("Fail");
  }
  return acc;
}

_setHeader() => {'Content-Type': 'application/json; charset=utf-8', 'Accept': 'application/json'};
