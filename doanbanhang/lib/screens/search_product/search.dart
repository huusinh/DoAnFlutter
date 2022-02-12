import 'dart:async';

import 'package:doanbanhang/api/api_allproducts.dart';
import 'package:doanbanhang/models/products_test.dart';
import 'package:doanbanhang/screens/productdetails/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'search_widget.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key, required this.iduser}) : super(key: key);
final int iduser;
  @override
  _SearchProduct createState() => _SearchProduct();
}

class _SearchProduct extends State<SearchProduct> {
  List<Product> products = [];
  String query = '';
  Timer? debouncer;

  @override
  void initState() {
    super.initState();

    init();
  }

  @override
  void dispose() {
    debouncer?.cancel();
    super.dispose();
  }

  void debounce(
    VoidCallback callback, {
    Duration duration = const Duration(milliseconds: 1000),
  }) {
    if (debouncer != null) {
      debouncer!.cancel();
    }

    debouncer = Timer(duration, callback);
  }

  Future init() async {
    final products = await fetchProduct(query);

    setState(() => this.products = products);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Search Products"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            buildSearch(),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return buildProduct(product);
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Title ',
        onChanged: searchProduct,
      );

  Future searchProduct(String query) async => debounce(() async {
        final products = await fetchProduct(query);

        if (!mounted) return;

        setState(() {
          this.query = query;
          this.products = products;
        });
      });

  Widget buildProduct(Product product) => ListTile(
        leading: Image.network(
          "http://10.0.2.2/images/"+product.image,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(product.tittle),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(product: product, iduser: widget.iduser,)));
        },
      );
}
