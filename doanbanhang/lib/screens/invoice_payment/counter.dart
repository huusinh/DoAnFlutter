import 'package:doanbanhang/api/api_updatesoluong.dart';
import 'package:doanbanhang/constants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget{
  const CartCounter({Key? key,
  required this.idchitietgiohang,
  required this.soluong}) : super(key: key);
final int idchitietgiohang,soluong;

  @override 
  _CartCounterState createState() => _CartCounterState();
}
class _CartCounterState extends State<CartCounter>
{
  int numOfItems=1;

  @override
  void initState() {
    super.initState();
    numOfItems=widget.soluong;
  }
   @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () { 
            fetchUpdate(widget.idchitietgiohang,0);
            if (numOfItems>1){
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const  EdgeInsets.symmetric(horizontal: kDefaultPaddin/2),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(icon: Icons.add, press: () {
           fetchUpdate(widget.idchitietgiohang,1);
          setState(() {
            numOfItems++;
          });
        }),
      ],
    ) ;
  }
  SizedBox buildOutlineButton({required IconData icon, required Function() press}){
    return SizedBox(
          width: 40,
          height: 32,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed: press,
            child: Icon(icon),
          ),
        );
  }
}
