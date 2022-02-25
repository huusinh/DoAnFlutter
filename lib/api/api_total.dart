import 'package:doanbanhang/models/account.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<int> gettotal(int id) async {
 final response = await http.post(Uri.parse('http://10.0.2.2:8000/api/gettotal'),body: {'iduser':'$id'});
  
if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
   
   return json.decode(response.body);
  } else {
    
    throw Exception('Failed to load data');
  }

  }