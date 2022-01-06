import 'package:flutter/material.dart';

class Product{
  late final String image, tittle, description;
  late final int price, size, id;
  late final Color color;
  Product({
    required this.id,
    required this.image,
    required this.tittle,
    required this.description,
    required this.price,
    required this.size,
    required this.color
  });
}
List<Product> products=[
  Product(
    id:1,
    tittle: 'Apple Watch Serries7',
    price: 234,
    size: 12,
    description: des,
    image:'assets/images/product-1.png' ,
    color: Color(0xFF3D82AE)
  ),
  Product(
    id:2,
    tittle: 'Apple Watch SE',
    price: 234,
    size: 12,
    description: des,
    image:'assets/images/product-2.png' ,
    color: Color(0xFFD3A984)
  ),
  Product(
    id:3,
    tittle: 'Apple Watch Series3',
    price: 234,
    size: 12,
    description: des,
    image:'assets/images/product-3.png' ,
    color: Color(0xFF989493)
  ),
  Product(
    id:4,
    tittle: 'Apple Watch Nike',
    price: 234,
    size: 12,
    description: des,
    image:'assets/images/product-4.png' ,
    color: Color(0xFFE6B398)
  ),
  Product(
    id:5,
    tittle: 'Apple Watch Hermes',
    price: 234,
    size: 12,
    description: des,
    image:'assets/images/product-5.png' ,
    color: Color(0xFFFB7883)
  ),
  Product(
    id:6,
    tittle: 'Apple Series7 Blue',
    price: 234,
    size: 12,
    description: des,
    image:'assets/images/product-6.png' ,
    color: Color(0xFFAEAEAE)
  ),
];
String des="The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy.\n The Braided Solo Loop is made from recycled yarn and silicone threads for an ultracomfortable, stretchable design with no clasps or buckles.";