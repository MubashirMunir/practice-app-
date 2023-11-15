import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack1 extends StatelessWidget {
  stack1({
    required this.desc,
    required this.name,
    required this.ci,
    required this.image,
    required this.price,
  });
  final String image;
  final String ci;
  final String name;
  final String price;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        height: 126,
        width: 150,
      ),
      Container(
          margin: const EdgeInsets.only(top: 125, left: 1),
          height: 40,
          width: 159,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(
                      0,
                      10,
                    ),
                    color: Colors.black12,
                    blurRadius: 5)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(left: 55, top: 7),
              child: Text(
                name,
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20, left: 8),
                height: 15,
                width: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
                alignment: Alignment.center,
                child: Text(price,
                    style:
                        TextStyle(color: CupertinoColors.white, fontSize: 7))),
            Padding(
                padding: EdgeInsets.only(left: 55, top: 20.0),
                child: SizedBox(
                    height: 16,
                    width: 16,
                    child: CircleAvatar(backgroundImage: AssetImage(ci)))),
            Padding(
                padding: EdgeInsets.only(left: 73, top: 23),
                child: Text(
                  desc,
                  style: TextStyle(fontSize: 10),
                )),
          ]))
    ]);
  }
}
