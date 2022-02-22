import 'package:doanbanhang/screens/account/infomation.dart';
import 'package:doanbanhang/screens/account/profiles.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  final int iduser;
  const MyOrder({Key? key, required this.iduser}) : super(key: key);
  @override
  _MyOderState createState() => _MyOderState();
}

class _MyOderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Đơn hàng của tôi'),
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(
                              iduser: widget.iduser,
                            )));
              },
            ),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(text: 'Tất cả'),
              Tab(text: 'Đơn mới đặt'),
              Tab(text: 'Đơn đã xử lý'),
            ]),
          ),
          body: TabBarView(
            children: [
              Column(children: [
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: const Color(0xFFF5F6F9),
                  child: Row(
                    children: const [
                      Text(
                        '#0123',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Information(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Information(
                                iduser: widget.iduser,
                              )),
                    );
                  },
                ),
              ]),
              Column(children: [
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: const Color(0xFFF5F6F9),
                  height: 70,
                  child: Row(
                    children: const [
                      Text(
                        '#0124',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Information(
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
                  height: 70,
                  child: Row(
                    children: const [
                      Text(
                        '#0128',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Information(
                                iduser: widget.iduser,
                              )),
                    );
                  },
                ),
              ]),
              Column(children: [
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: const Color(0xFFF5F6F9),
                  height: 70,
                  child: Row(
                    children: const [
                      Text(
                        '#0125',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Information(
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
                  height: 70,
                  child: Row(
                    children: const [
                      Text(
                        '#0129',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Information(
                                iduser: widget.iduser,
                              )),
                    );
                  },
                ),
              ]),
            ],
          ),
        ),
      );
}
