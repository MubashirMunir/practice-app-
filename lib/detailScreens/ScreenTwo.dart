
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../other pages/notification.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);
  @override
  State<ScreenTwo> createState() => _ScreenOneState();
}
class _ScreenOneState extends State<ScreenTwo> with SingleTickerProviderStateMixin{
  @override
  bool isClick = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: CupertinoColors.white,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(80),
          child: AppBar(leading: const BackButton(
            color: Colors.black,),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: IconButton(tooltip: "Notification Screen",
                      onPressed: (){showAlertDialog(context);},
                      icon:const Icon(Icons.notifications_none,color: Colors.black)
                  ),
                )],
              title:const Padding(padding:  EdgeInsets.only(left: 0),
                  child: Text("nftApp",style: TextStyle(color: Colors.black))),
              systemOverlayStyle:const SystemUiOverlayStyle(
                statusBarColor: Colors.white,),
              backgroundColor: Colors.white,elevation: 0)),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 225,),
          child: Center(
            child: ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(50)),
              child:SizedBox(
                  height: 400,
                  child:Hero(
                     tag: Icons.key,
                      child: Image.asset("assets/images/bruc1.jpg"))
              ),
            ),
          ),
        ),
        Positioned(top: 404,left: 85,
          child:   Container(
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(40)),
            height: 50,width: 190,
            child:Row(children: [
              const Padding(
                padding:  EdgeInsets.only(left: 20,),
                child: IconButton(
                  icon:Icon(Icons.delete,size:35,color:Colors.redAccent,),onPressed: null,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,bottom: 50),
                child: FavoriteButton(
                    isFavorite: false,valueChanged: (_isFavourite){
                  print("$_isFavourite" );}
                ),
              ),
            ],) ,
          ),
        ),
        Positioned(top: 470,left: 110,
          child: Stack(
              children: [
                const Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text("The Unknow",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 40,left: 8),
                    height: 15,
                    width: 40,
                    decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [Colors.deepPurple,
                              Colors.deepPurpleAccent])),
                    alignment: Alignment.center,
                    child: const Text(" ETH 225",style: TextStyle(color: CupertinoColors.white,fontSize: 7))),
                const Padding(
                  padding:  EdgeInsets.only(left: 67,top: 40.0),
                  child: SizedBox(
                    height: 16,
                    width: 16,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/me2.jpg"),),),),
                const  Padding(padding: EdgeInsets.only(left: 85,top: 43),
                    child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
              ]),
        ),
        Positioned(top: 550,left: 55,
          child: Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(gradient:const LinearGradient(begin: Alignment.topRight,end: Alignment.bottomLeft,
                colors:[Colors.tealAccent,Colors.cyanAccent]) ,
                borderRadius: BorderRadius.circular(12)),
            child:const Padding(
              padding:  EdgeInsets.only(left: 58,top: 12),
              child:  Text("Place Your Bid",style: TextStyle(fontSize: 20),),
            ),
          ),
        ),
      ],),
    );
  }
}
