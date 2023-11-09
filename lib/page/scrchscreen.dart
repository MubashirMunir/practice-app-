import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/appbar.dart';
import '../widgets/stack3.dart';
class searchscreen extends StatefulWidget {
  @override
State<searchscreen> createState() => _searchscreenState();
}
class _searchscreenState extends  State<searchscreen>{
  @override
Widget build(BuildContext context){
  return Scaffold(appBar:customappbar(iconcolor:Colors.black,title: "nft",bgclr: Colors.white,statusclr: Colors.white,),
      backgroundColor:CupertinoColors.white,
        body: Column(
              children:[
                Material(elevation:1,
                  borderRadius: BorderRadius.circular(15.0),
                  child: const SizedBox(
                    height: 46.0,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none,
                          icon: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Icon(Icons.search)),
                          hintText: "Search Here",hintStyle: TextStyle(color:Colors.black54,)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                    padding: EdgeInsets.only(right: 245),
                    child: Text("0 Results",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
                const SizedBox(height: 105,),
                const Divider(
                    color: Colors.black38,
                    height: 25,
                    thickness:.4,
                    indent: 25,
                    endIndent: 25
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 215,bottom: 10),
                  child: Text("Recommended",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),),
                //Row is starts from here
                Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: stack3(image: "assets/images/cat2.jpg", name: "Mubashir", price: "price", desc: "desc", ci: "assets/images/me1.jpg"),
                      ),
                      //forth product in second row
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: stack3(image: "assets/images/pic1.jpg", name: "Mubashir", price: "price", desc: "desc", ci: "assets/images/me1.jpg"),
                      ),
                    ]),
                const SizedBox(height: 20,),
                Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: stack3(image: "assets/images/pic1.jpg", name: "Mubashir", price: "500", desc: "desc", ci: "assets/images/me1.jpg"),
                      ),
                      //forth product in second row
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: stack3(image: "assets/images/pic1.jpg", name: "Mubashir", price: "1000", desc: "desc", ci: "assets/images/me1.jpg"),
                      ),
                    ]),
              ]),

  );
  }
}