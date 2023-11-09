import 'package:flutter/material.dart';
class version extends StatelessWidget {
  const version({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Version"
          "1.0.0",style: TextStyle(fontWeight: FontWeight.bold),)),
    );
  }
}
