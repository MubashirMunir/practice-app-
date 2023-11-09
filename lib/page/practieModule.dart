// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// class conection extends StatefulWidget {
//   const conection({Key? key}) : super(key: key);
//   @override
//   State<conection> createState() => _conectionState();
// }
// class _conectionState extends State<conection> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       StreamBuilder<ConnectivityResult>(
//         stream:Connectivity().onConnectivityChanged,
//         builder: (context, snapshot){
//           return Center(
//          child:(snapshot.data == ConnectivityResult.none)?CircularProgressIndicator(color: Colors.blueGrey,):Column(children: [
//            Container(color: Colors.red,
//            height: 200,
//            width: 200,),
//            Container(color: Colors.yellow,
//              height: 200,
//              width: 200,),
//            Container(color: Colors.pinkAccent,
//              height: 200,
//              width: 200,),
//            Container(color: Colors.green,
//              height: 200,
//              width: 200,),
//          ],)
//      );
//     }
//       )
//     );
//   }
// }
