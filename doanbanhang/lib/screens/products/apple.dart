
import 'package:doanbanhang/api/api_apple.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:doanbanhang/screens/home/itemcard.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class Apple extends StatelessWidget {
  const Apple({Key? key, required this.iduser}) : super(key: key);
final int iduser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen(account: [], iduser: iduser,)));
          },
        ),
      ),
      body: appleWidget(iduser: iduser,),
    );
  }
}

class appleWidget extends StatelessWidget {
  const appleWidget({
    Key? key, required this.iduser
  }) : super(key: key);
final int iduser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              "Apple",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: FutureBuilder<List<Product>>(
                future: fetchApple(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('An error has occurred!'),
                    );
                  } else if (snapshot.hasData) {
                    return GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: kDefaultPaddin,
                        crossAxisSpacing: kDefaultPaddin,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (context, index) => ItemCard(
                          product: snapshot.data![index],
                          press:
                              () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(product:snapshot.data![index], iduser: iduser,))),
                          ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
