import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/models/products.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget{
  final Product product;
  final Function() press;
  const ItemCard({
    Key ?key,
    required this.product, 
    required this.press,
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
     child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Expanded(
            child:Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            //width: 140,
            //height: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(product.image),
          ),
              ),
              ),
          Padding(
            padding:const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
            child: Text(product.tittle,
            style: TextStyle(color:kTextLightColor),),
          ),
          Text("\$${product.price}",style:TextStyle(fontWeight: FontWeight.bold),),
        ],
      )
    );
  }
}
