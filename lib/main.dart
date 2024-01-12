import 'package:example/detailScreens/ScreenOne.dart';
import 'package:example/detailScreens/ScreenTwo.dart';
import 'package:example/other%20pages/notchbottombar.dart';
import 'package:example/page/homepage.dart';
import 'package:example/page/listviewdetails.dart';
import 'package:example/page/product%20list.dart';
import 'package:example/page/profilescreen.dart';
import 'package:example/page/scrchscreen.dart';
import 'package:example/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: splash(),
      routes: {
        '/notchbar': (context) => const notchbottom(),
        '/home': (context) => FirstScreen(),
        '/searchscreen': (context) => searchscreen(),
        '/profile_screen': (context) => profile_screen(),
        '/listviewdetails': (context) => listviewdetails(),
        '/profile': (context) => ScreenTwo(),
        '/profile': (context) => ScreenOne(),
        '/profile': (context) => productlist(),
        '/profile': (context) => productlist(),
        '/profile': (context) => productlist(),
        '/profile': (context) => productlist(),
        '/profile': (context) => productlist(),
      },
    );
  }
}
