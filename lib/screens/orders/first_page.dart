import 'package:flutter/material.dart';

import 'invoice_detail.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({
    Key? key,
    required this.TrangThai,
  }) : super(key: key);
  final int TrangThai;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          child: Column(children: [
            // ignore: deprecated_member_use
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: const Color(0xFFF5F6F9),
              child: Row(
                children: [
                  Text(
                    TrangThai.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 150),
                  Expanded(
                      child: Text(
                    'Đơn đã xử lý',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
              onPressed: () {
                var widget;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InvoiceDetail(
                            iduser: widget.iduser,
                          )),
                );
              },
            ),
            // ignore: deprecated_member_use
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: const Color(0xFFF5F6F9),
              child: Row(
                children: const [
                  Text(
                    '#0127',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 150),
                  Expanded(
                      child: Text(
                    'Đơn mới đặt',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
              onPressed: () {
                var widget;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InvoiceDetail(
                            iduser: widget.iduser,
                          )),
                );
              },
            ),
          ]),
        ),
      );
}
