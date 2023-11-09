
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:example/detailScreens/ScreenOne.dart';
import 'package:example/detailScreens/ScreenTwo.dart';
import 'package:example/modules/dataModule.dart';
import 'package:example/widgets/appbar.dart';
import 'package:flutter/material.dart';
import '../other pages/drawer.dart';
import '../widgets/stack.dart';
import '../widgets/stack2.dart';
import '../widgets/stack3.dart';
import 'listviewdetails.dart';

class FirstScreen extends StatefulWidget{

State<FirstScreen>  createState() => _FirstScreenState();}
class _FirstScreenState extends State<FirstScreen>{
  final CarouselController cc=CarouselController();
  int currentIndex = 0;
  final List images =[
    {"id":1 ,'image_path':"https://imagesvc.meredithcorp.io/v3/mm/image?q=60&c=sc&poi=%5B900%2C533%5D&w=2000&h=1333&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2021%2F03%2F12%2Fpomeranian-white-puppy-921029690-2000.jpg"},
    {'id': 1,'image_path':"https://i.redd.it/5unn16axx1v81.jpg"},
    {'id':1,'image_path':"https://wildlifeinformer.com/wp-content/uploads/2022/08/Red-Panda.jpg"},
    {'id': 1,'image_path':"https://anthropocenemagazine.org/wp-content/uploads/2020/04/Panda-2.jpg"},
  ];
  @override
  List<Item> item =module.items;
  Widget build(BuildContext context) {
    return Scaffold(drawer: drawers(),
        appBar:customappbar(
          iconcolor: Colors.white,title:"Species",bgclr: Colors.teal,statusclr: Colors.teal),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children:[
              // InkWell(
              // onTap: (){print(currentIndex);},
              // // images.map((pics) =>Image.network(pics["image_path"])).toList(),
              // child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: CarouselSlider(
                      items: [
                         Image.asset("assets/images/white.jpg"),
                        SizedBox(child: Image.asset("assets/images/panda.jpg")),
                        SizedBox(child: Image.asset("assets/images/cat0.jpeg")),
                        SizedBox(child: Image.asset("assets/images/cati.jpg")),
                      ],
                      carouselController:cc,
                      options: CarouselOptions(
                      autoPlayAnimationDuration: Duration(seconds: 3),
                          viewportFraction: 1,
                          autoPlay: true,
                          enableInfiniteScroll: true,

                          autoPlayCurve: Curves.ease,
                          aspectRatio: .1,
                          height: 230,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason){setState(() {
                            currentIndex = index;
                          });}
                      )),
                ),
              ),

              Positioned(
                  top: 225,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    images.asMap().entries.map((entry){
                      print(entry);
                      print(entry.key);
                      return GestureDetector(onTap: () => cc.animateToPage(entry.key),
                      child:Container(
                        height: 7,
                        width: currentIndex == entry.key ? 7:7,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key ?Colors.white : Colors.teal,
                        ),)
                      );
                    }).toList()
                  ))
    ]),
          const Padding(
            padding:  EdgeInsets.only(right: 230,top: 10,bottom: 2),
            child:  Text("Trending",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
         Container(height: 170,
                  child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> listviewdetails()));},
                    child: ListView(reverse: false,
                        scrollDirection: Axis.horizontal,
                       children: [
                         Hero(tag: Icons.key,
                           child: GestureDetector(child: stack1(desc:"I am died", name: "Bruce", ci: "assets/images/bruc1.jpg",  image: "assets/images/bruc1.jpg", price: "price"),
                           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()  )) ,
                           ),
                         ),
           Hero(tag: Icons.call_to_action,
               child:InkWell(child: stack1(desc: "Caty Cat", name: "Solo Cat", ci: "assets/images/cat1.jpg", image: "assets/images/cat1.jpg", price: "price"),
                           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()  )) ,
                         )),
                         stack1(desc: "Caty Cat", name: "British Cat", ci: "assets/images/cat2.jpg", image: "assets/images/cat2.jpg", price: "price"),
                         stack1(desc: "Caty Cat", name: "Solo Cat", ci: "assets/images/cat.jpg",  image: "assets/images/cat.jpg", price: "price"),
                         stack1(desc: "Caty Cat", name: "Dog", ci: "assets/images/dog1.jpg", image: "assets/images/dog1.jpg", price: "price"),
                         stack1(desc: "Caty Cat", name: "Dog", ci: "assets/images/dog2.jpg", image: "assets/images/dog2.jpg", price: "price"),
                                    ]),
                  ),
                ),
         const Padding(
            padding:  EdgeInsets.only(right: 230,top: 10),
            child:  Text("Top Seller",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
          Container(height: 50,
           child: ListView(
             scrollDirection: Axis.horizontal,
                children: [
                  stack2(image: "assets/images/bruc1.jpg", name: "Mubashir", price: "price", desc: "imMubahir"),
                  stack2(image: "assets/images/cati.jpg", name: "Mubashir", price: "price", desc: "imMubahir"),
                  stack2(image: "assets/images/bruc1.jpg", name: "Mubashir", price: "price", desc: "imMubahir"),
                  stack2(image: "assets/images/bruc1.jpg", name: "Mubashir", price: "price", desc: "imMubahir"),
                  stack2(image: "assets/images/bruc1.jpg", name: "Mubashir", price: "price", desc: "imMubahir"),
                ],),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
                children: [
                  Row(children: [
                        Padding(padding: const EdgeInsets.only(left: 35.0,),
                         child: stack3(image: "assets/images/panda"
                             ".jpg", name: "Panda", price: "price", desc: "desc", ci: "assets/images/me2.jpg"),
                        ),
                        //forth animal in second row
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: stack3(image: "assets/images/cati.jpg", name: "British Cat", price: "price", desc: "desc", ci: "assets/images/me2.jpg"),
                        ),
                      ]),
                  Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 35,top: 10),
                          child: stack3(image: "assets/images/cati.jpg", name: "Cat", price: "price", desc: "desc", ci: "assets/images/me2.jpg"),
                        ),
                        //forth animal in second row
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 8),
                          child: stack3(image: "assets/images/panda.jpg", name: "Mubashir", price: "price", desc: "desc", ci: "assets/images/me2.jpg"),
                        ),
                      ]),
                ]),
          ),
        ]),
    ),
    );
  }
}