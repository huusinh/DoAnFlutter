import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class FavScreen extends StatelessWidget{
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Danh sách yêu thích'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){Navigator.pop(context);},
            ),
           backgroundColor: Colors.orange,
          
          ),
       body: Item(),
    );
  }
}