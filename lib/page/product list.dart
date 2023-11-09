import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../modules/dataModule.dart';
import 'ItemList.dart';
class productlist extends StatefulWidget {
State<productlist> createState() => _productlistState();
}
class _productlistState extends State<productlist> with SingleTickerProviderStateMixin{
  late TabController tc;
  void initState(){
    loadData();
    tc =TabController(length:2, vsync: this);}
    void loadData() async{
      final jsonData = await rootBundle.loadString("assets/file/Data.json");
      var decoded = jsonDecode(jsonData);
      var productData =decoded["products"];
      module.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
setState((){});}
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {print(context);},)],
          leading: Icon(Icons.menu),
          elevation: 0,
          toolbarHeight: 25,
          centerTitle: true,),
        body: ListView.builder(
                  itemCount: module.items.length,
                  itemBuilder:(context, index) {
                    return speciesList(item: module.items[index]);
                  }
                  ));
  }
}


// Catalog.items=List.from(productData).map((item)=> Item.forMap(item) ).toList();

