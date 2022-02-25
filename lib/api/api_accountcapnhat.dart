import 'dart:async';
import 'dart:convert';
import 'package:doanbanhang/models/account.dart';
import 'package:doanbanhang/screens/account/infomation.dart';
import 'package:doanbanhang/screens/login/Auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<User> apiCapnhat(User user) async {
  User acc;
  String url = "http://10.0.2.2:8000/api/capnhat/${Auth.user.id}";
  var response = await http.post(Uri.parse(url), headers: _setHeader(), body: jsonEncode(user.toJson()));
  if (response.statusCode == 200) {
    final jsondata = json.decode(response.body);
    acc = User.fromJson(jsondata);
  } else {
    throw Exception("Fail");
  }
  return acc;
}

_setHeader() => {'Content-Type': 'application/json; charset=utf-8', 'Accept': 'application/json'};
