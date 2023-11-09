import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class stack2 extends StatelessWidget {
   stack2({
    required this.image,
    required this.name,
    required this.price,
    required this.desc,
});
String name;
  String price;
  String desc;
  String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
           Padding(
            padding:  EdgeInsets.only(left: 55,top: 7),
            child: Text(name,style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20,left: 8),
              height: 15,
              width: 40,
              decoration:const BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Colors.deepPurple,
                        Colors.deepPurpleAccent])),
              alignment: Alignment.center,
              child:  Text(price,style: TextStyle(color: CupertinoColors.white,fontSize: 7))),
           Padding(
            padding:  EdgeInsets.only(left: 55,top: 20.0),
            child: SizedBox(
              height: 16,
              width: 16,
              child: CircleAvatar(
                backgroundImage: AssetImage(image),),),),
            Padding(padding: EdgeInsets.only(left: 73,top: 23),
              child:Text(desc,style: TextStyle(fontSize: 10),)),
        ]);
  }
}
