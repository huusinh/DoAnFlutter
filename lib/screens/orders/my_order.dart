import 'package:doanbanhang/screens/account/infomation.dart';
import 'package:doanbanhang/screens/account/profiles.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);
  @override
  _MyOderState createState() => _MyOderState();
}

class _MyOderState extends State<MyOrder> {
  List menuItems = [
  "Tất cả",
  "Đơn mới đặt",
  "Đơn đã xử lý",
];
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Đơn hàng của tôi'),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 30),
            child: Row(
              children: List.generate(menuItems.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        activeMenu = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: activeMenu == index
                                    ? Colors.black
                                    : Colors.transparent,
                                width: 2)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          menuItems[index],
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Card(
          elevation: 2,
          child: Column(
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: const Color(0xFFF5F6F9),
                height: 70,
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
                        builder: (context) => const Information()),
                  );
                },
              ),
              sizebox(),
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
                        builder: (context) => const Information()),
                  );
                },
              ),
              sizebox(),
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
                        builder: (context) => const Information()),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  SizedBox sizebox() => const SizedBox(height: 20);
}
