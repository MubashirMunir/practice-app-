import 'package:flutter/material.dart';
class bigpic extends StatelessWidget {
  const bigpic( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(tag:Icons.kayaking ,
      child: Container(

        height:300,
        child: Image.asset("assets/images/me1.jpg"),

      ),
    );
  }
}
