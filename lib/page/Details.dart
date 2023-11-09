import 'package:carousel_slider/carousel_controller.dart';
import 'package:example/modules/dataModule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
 details({required this.item});
 final Item item;
  State<details> createState() => _detailsState(this.item);
}
 class _detailsState extends State<details>{
   _detailsState(this.item);
  final Item item;
int currentIndex=0;
CarouselController cc =CarouselController();
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(actions: [
        PopupMenuButton(itemBuilder: (context) => [
         const PopupMenuItem(child: Text("One"),
            value: 1,),
         const PopupMenuItem(child:Text("Two"),
            value: 2,),
          PopupMenuItem(
            onTap: (){Navigator.of(context);},
            child:const Text("Logout"),
            ),
        ],
        ),
      ],
        toolbarHeight: 40,bottomOpacity: 5,
        elevation: 0,),
           backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 300,
                width: 300,
                child: Hero(
                    tag: 1,
                    child: Image.network(item.image))),
            const SizedBox(height: 5),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
              color: CupertinoColors.white,
                boxShadow: const [ BoxShadow(blurRadius: 2)],
                borderRadius: BorderRadius.circular(5)),
            child:Padding(
              padding: const EdgeInsets.only(top:5),
              child: Text(item.name,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,softWrap: true,),)),
           const SizedBox(height: 20),
            Center(
              child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.white,
                  boxShadow:const [ BoxShadow(blurRadius: 1)]),
                    height: 300,
                   width: 328,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item.desc,style: const TextStyle(fontSize: 16,wordSpacing: 1),),
                  ),
              ),
            )
          ]),
      )
    );
  }
}












//
// CustomScrollView(slivers:[SliverAppBar(
// stretch: true,
// expandedHeight: 150,
// pinned: true,
// floating: true,
// backgroundColor: Colors.brown,
// ),
// SliverToBoxAdapter(
// child: Column(children: [
// // Stack(children:[
// //   InkWell(
// //   onTap: (){print(currentIndex);},
// //   child: CarouselSlider(
// //      items: images.map((item) => Image.network(item['image_path'])).toList(),
// //      carouselController:cc,
// //      options: CarouselOptions(
// //      viewportFraction: 1,
// //      aspectRatio: 2,
// //      scrollPhysics: BouncingScrollPhysics(),
// //      height: 250,
// //      autoPlay: true,
// //      scrollDirection:Axis.horizontal,
// //      onPageChanged: (index,reason){setState((){currentIndex = index;});}
// //       )),
// // ),
// // ]),
//
// ]),
//
// )],
// ),