import 'dart:async';
import 'package:example/other%20pages/notchbottombar.dart';
import 'package:flutter/material.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);
  @override
  State<splash> createState() => _splashState();
}
class _splashState extends State<splash> {
  void initState()
  {super.initState();
    Timer(Duration(seconds: 3),()=> Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>notchbottom())));}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
           SizedBox(height: 50,),
        SizedBox(height: 370,
            child: Image.asset("assets/images/sp.jpg")
        ),
        const SizedBox(height: 60,),
        const Text("ہوشیار بادشاہ سلامت تشریف لارہےہیں",
          style: TextStyle(
              fontSize: 38, color: Colors.teal, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        const  SizedBox(height: 100,),
        LinearProgressIndicator(
          backgroundColor: Colors.white,
          color: Colors.teal,),
      ],),
    );
  }
}

