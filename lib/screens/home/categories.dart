import 'package:doanbanhang/constants.dart';
import 'package:doanbanhang/screens/products/apple.dart';
import 'package:doanbanhang/screens/products/samsung.dart';
import 'package:doanbanhang/screens/products/xiaomi.dart';
//import 'package:doanbanhang/screens/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key, required this.iduser}) : super(key: key);
  final int iduser;
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Apple(
                            iduser: widget.iduser,
                          )));
            },
            style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin / 4, vertical: kDefaultPaddin / 2),
              child: Column(children: [
                SvgPicture.asset("assets/icons/samsung.svg"),
                const SizedBox(
                  height: kDefaultPaddin / 2,
                ),
                Text("Apple", style: Theme.of(context).textTheme.subtitle2)
              ]),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          OutlinedButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> Samsung(iduser: widget.iduser,)));
            },
            style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin / 4, vertical: kDefaultPaddin / 2),
              child: Column(children: [
                SvgPicture.asset("assets/icons/samsung.svg"),
                const SizedBox(
                  height: kDefaultPaddin / 2,
                ),
                Text("Samsung", style: Theme.of(context).textTheme.subtitle2)
              ]),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Xiaomi(
                            iduser: widget.iduser,
                          )));
            },
            style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin / 4, vertical: kDefaultPaddin / 2),
              child: Column(children: [
                SvgPicture.asset("assets/icons/samsung.svg"),
                const SizedBox(
                  height: kDefaultPaddin / 2,
                ),
                Text("Xiaomi", style: Theme.of(context).textTheme.subtitle2)
              ]),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Apple(
                            iduser: widget.iduser,
                          )));
            },
            style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin / 4, vertical: kDefaultPaddin / 2),
              child: Column(children: [
                SvgPicture.asset("assets/icons/samsung.svg"),
                const SizedBox(
                  height: kDefaultPaddin / 2,
                ),
                Text("Others", style: Theme.of(context).textTheme.subtitle2)
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
