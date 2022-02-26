import 'package:doanbanhang/api/api_account.dart';
import 'package:doanbanhang/api/api_getcart.dart';
import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/account.dart';
import 'package:doanbanhang/screens/invoice_payment/invoice_itemcard.dart';
import 'package:flutter/material.dart';
import 'package:doanbanhang/models/cart.dart';

import '../login/Auth.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String info = "";

  void getInfo() async {
    User user = await infoAccount();
    setState(() {
      info = '''
        Số điện thoại: ${user.sDT}\n
       Địa chỉ: ${user.diaChii!.diachichitiet}, ${user.diaChii!.phuongxa}, \n
       ${user.diaChii!.quanhuyen}, \n
       ${user.diaChii!.tinhthanhpho}, \n
       Tên Người Nhận: ${user.diaChii!.tennguoinhan}
       ''';
    });
  }

  @override
  void initState() {
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: kDefaultPaddin,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  //borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: kTextColor,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Thông tin giao hàng:",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: kDefaultPaddin),
                    Text(
                      info,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPaddin,
          ),
          FutureBuilder<List<Cart>>(
            future: fetchGetCart(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('An error has occurred!'),
                );
              }
              if (snapshot.hasData) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10, //khoang cach giua cac'layout
                  ),
                  //ngan chan ListView no' cuon xuong' duoc, xai` cho SingleChildScrollView-column
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: InvoiceItemCard(
                      image: snapshot.data![i].image,
                      tittle: snapshot.data![i].tittle,
                      price: snapshot.data![i].price,
                      id: snapshot.data![i].id,
                      idsp: snapshot.data![i].idsanpham,
                      soluong: snapshot.data![i].soluong,
                      iduser: Auth.user.id!,
                    ),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    );
  }
}
