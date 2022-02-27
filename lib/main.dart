import 'package:doanbanhang/api/api_invoices.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/screens/login/log_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Invoices()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        ),
        home: Login(
          iduser: 1,
        ),
      ),
    );
  }
}
