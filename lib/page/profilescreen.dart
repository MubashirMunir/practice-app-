import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../other pages/notification.dart';
import 'bigpic.dart';
class profile_screen extends StatefulWidget {
  State<profile_screen> createState() => _profile_screenState();
}
class _profile_screenState extends  State<profile_screen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  void initState(){
    _tabController =TabController(length:2, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: IconButton(onPressed: (){showAlertDialog(context);},
              icon:  Icon(Icons.notifications_none,color: Colors.white,),
            ),
            )],
             title:  const Padding(padding: EdgeInsets.only(top: 30.0,left: 20),
             child: Text("nftApp",style: TextStyle(color: Colors.white))),
             systemOverlayStyle: const SystemUiOverlayStyle(
             statusBarColor: CupertinoColors.systemBlue,),
             backgroundColor: CupertinoColors.systemBlue,elevation: 0),
             backgroundColor:CupertinoColors.systemGrey6,
             body:Column(
             children: [
             Stack(
              children: [
              SizedBox(
             height: 340,
             width: 400,
             child: Container(
             decoration:const BoxDecoration( color: Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(55)),
             boxShadow: [
             BoxShadow(offset: Offset(0, 1),color: Colors.black12,
             blurRadius: 10,),
            ]),
         ),
    ),
             Positioned(
             child: ClipRRect(borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(50,),
             bottomRight: Radius.circular(50),),
             child: Container(
             color: CupertinoColors.systemBlue,
             height: 170,
             width: 400,)),),

            Padding(
             padding: const EdgeInsets.only(left: 138,top: 120),
             child: Hero(tag:Icons.kayaking,
               child: GestureDetector(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>  bigpic())),
                 child: Container(
                 decoration: BoxDecoration(
                     image: const DecorationImage(image: AssetImage("assets/images/me1.jpg")),
                     borderRadius: BorderRadius.circular(400),
                     border: Border.all(width: 2.5,color: CupertinoColors.white)),
                     height: 90,
                     width: 90),
               ),
             )
            ),
               const Padding(
                  padding: const EdgeInsets.only(top: 210,left: 150),
                  child: Text("Mubashir",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),),
                Container(margin: const EdgeInsets.only(top: 231,left: 145),
                  height: 13,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient:const LinearGradient(begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.cyanAccent,
                    Colors.cyan])),
                 child: const Text(textAlign:TextAlign.center,"#1 Seller",style: TextStyle(fontSize: 11,color: Colors.black,),),),
               const Padding(
                  padding: const EdgeInsets.only(top: 280.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("120K",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                    Text("120K",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                      Text("255 ETH",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),],),),
                const Padding(
                  padding:  EdgeInsets.only(top: 300.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40,),
                        child: Text("ArtWorks",style: TextStyle(fontSize: 15,),),
                      ),
                        Padding(
                      padding: EdgeInsets.only(left: 35,right: 0),
                      child:
                      Text("Auctions",style: TextStyle(fontSize: 15,),),),
                        Padding(
                      padding: EdgeInsets.only(left: 50,right: 0),
                      child:
                      Text("Earning",style: TextStyle(fontSize: 15,)
                        )
                      )]
                    )
                  )
              ]),
                   Container(
                     margin: const EdgeInsets.only(top: 2),
                     child: TabBar(indicatorSize:TabBarIndicatorSize.label,
                       indicatorWeight: 3.5,
                       labelColor: Colors.black,
                       indicatorColor: Colors.cyan,
                       controller: _tabController,
                       tabs: const[
                          Text("My Work",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,)),
                          Text("Liked",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                       ],),
                   ),
                   Container(
                     margin: const EdgeInsets.only(top: 8),
                     height: 274,
                     width: 400,
                     child: TabBarView(
                         controller: _tabController,
                         children: [
                           Column(
                               children: [
                                 Row(
                                     children: [
                                       Padding(
                                           padding: const EdgeInsets.only(left: 35.0),
                                           child: Stack(
                                               children: [
                                                 Container(margin: const EdgeInsets.only(left: 5),
                                                   decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                       image: AssetImage("assets/images/Picture.png",)),
                                                       color: CupertinoColors.black,
                                                       borderRadius: BorderRadius.all(Radius.circular(10))),
                                                   height: 95,
                                                   width: 120,),
                                                 Container(
                                                   margin: const EdgeInsets.only(top: 90,),
                                                   height: 40,
                                                   width: 130,
                                                   decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                       color: Colors.white,
                                                       borderRadius: BorderRadius.all(Radius.circular(5))),
                                                   child: Stack(
                                                       children: [
                                                         const Padding(
                                                           padding:  EdgeInsets.only(left: 55,top: 7),
                                                           child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                         ),
                                                         Container(
                                                             margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                           padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                           child: SizedBox(
                                                             height: 16,
                                                             width: 16,
                                                             child: CircleAvatar(
                                                               backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
                                                         const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                             child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                       ])
                                                   )
                                               ])
                                       ),
                                       //forth product in second row
                                       Padding(
                                         padding: const EdgeInsets.only(left: 30),
                                         child: Stack(
                                             children: [
                                               Container(margin: const EdgeInsets.only(left: 5),
                                                 decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                     image: AssetImage("assets/images/pic1.jpg",)),
                                                     color: CupertinoColors.label,
                                                     borderRadius: BorderRadius.all(Radius.circular(10))),
                                                 height: 95,
                                                 width: 120,),
                                               Container(
                                                 margin: const EdgeInsets.only(top: 90,),
                                                 height: 40,
                                                 width: 130,
                                                 decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                     color: Colors.white,
                                                     borderRadius: BorderRadius.all(Radius.circular(5))),
                                                 child: Stack(
                                                     children: [
                                                       const Padding(
                                                         padding:  EdgeInsets.only(left: 55,top: 7),
                                                         child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                       ),
                                                       Container(
                                                           margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                         padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                         child: SizedBox(
                                                           height: 16,
                                                           width: 16,
                                                           child: CircleAvatar(
                                                             backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
                                                       const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                           child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                     ]),
                                               )
                                             ]),
                                       ),
                                     ]),
                                 Row(
                                     children: [
                                       Padding(
                                           padding: const EdgeInsets.only(left: 35,top: 10),
                                           child: Stack(
                                               children: [
                                                 Container(margin: const EdgeInsets.only(left: 5),
                                                   decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                       image: AssetImage("assets/images/Picture.png",)),
                                                       color: CupertinoColors.black,
                                                       borderRadius: BorderRadius.all(Radius.circular(10))),
                                                   height: 95,
                                                   width: 120,),
                                                 Container(
                                                   margin: const EdgeInsets.only(top: 90,),
                                                   height: 40,
                                                   width: 130,
                                                   decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                       color: Colors.white,
                                                       borderRadius: BorderRadius.all(Radius.circular(5))),
                                                   child: Stack(
                                                       children: [
                                                         const Padding(
                                                           padding:  EdgeInsets.only(left: 55,top: 7),
                                                           child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                         ),
                                                         Container(
                                                             margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                           padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                           child: SizedBox(
                                                             height: 16,
                                                             width: 16,
                                                             child: CircleAvatar(
                                                               backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
                                                         const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                             child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                       ])
                                                   ,)
                                               ])
                                       ),
                                       //forth product in second row
                                       Padding(
                                         padding: const EdgeInsets.only(left: 30,top: 8),
                                         child: Stack(children: [
                                               Container(margin: const EdgeInsets.only(left: 5),
                                                 decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                     image: AssetImage("assets/images/pic1.jpg",)),
                                                     color: CupertinoColors.label,
                                                     borderRadius: BorderRadius.all(Radius.circular(10))),
                                                 height: 95,
                                                 width: 120,),
                                               Container(
                                                 margin: const EdgeInsets.only(top: 90,),
                                                 height: 40,
                                                 width: 130,
                                                 decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                     color: Colors.white,
                                                     borderRadius: BorderRadius.all(Radius.circular(5))),
                                                 child: Stack(
                                                     children: [
                                                       const Padding(
                                                         padding:  EdgeInsets.only(left: 55,top: 7),
                                                         child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                       ),
                                                       Container(
                                                           margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                         padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                         child: SizedBox(
                                                           height: 16,
                                                           width: 16,
                                                           child: CircleAvatar(
                                                             backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
                                                       const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                           child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                     ]),
                                               )
                                             ]),
                                       ),
                                     ]),
                               ]),
                           Column(
                               children: [
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 35),
                                       child: Stack(
                                           children: [
                                             Container(margin: const EdgeInsets.only(left: 5),
                                               decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                   image: AssetImage("assets/images/pic.jpg",)
                                               ),
                                                   color: CupertinoColors.label,
                                                   borderRadius: BorderRadius.all(Radius.circular(10))),
                                               height: 95,
                                               width: 120,),
                                             Container(
                                               margin: const EdgeInsets.only(top: 90,),
                                               height: 40,
                                               width: 130,
                                               decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.all(Radius.circular(5))),
                                               child: Stack(
                                                   children: [
                                                     const Padding(
                                                       padding:  EdgeInsets.only(left: 55,top: 7),
                                                       child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                     ),
                                                     Container(
                                                         margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                       padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                       child: SizedBox(
                                                         height: 16,
                                                         width: 16,
                                                         child: CircleAvatar(
                                                           backgroundImage: AssetImage("assets/images/me1.jpg"),),
                                                       )
                                                       ,),
                                                     const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                         child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                   ]),
                                             ),
                                           ]),
                                     ),
                                     //Second Product in same row
                                     Padding(
                                       padding: const EdgeInsets.only(left: 30),
                                       child: Stack(
                                           children: [
                                             Container(margin: const EdgeInsets.only(left: 5),
                                               decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                   image: AssetImage("assets/images/new.jpg",)),
                                                   color: CupertinoColors.label,
                                                   borderRadius: BorderRadius.all(Radius.circular(10))),
                                               height: 95,
                                               width: 120,),
                                             Container(
                                               margin: const EdgeInsets.only(top: 90,),
                                               height: 40,
                                               width: 130,
                                               decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.all(Radius.circular(5))),
                                               child: Stack(
                                                   children: [
                                                     const Padding(
                                                       padding:  EdgeInsets.only(left: 55,top: 7),
                                                       child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                     ),

                                                     Container(
                                                         margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                       padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                       child: SizedBox(
                                                         height: 16,
                                                         width: 16,
                                                         child: CircleAvatar(
                                                           backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
                                                     const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                         child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                   ]),
                                             ),
                                           ]),
                                     ),
                                   ],),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 35,top: 10),
                                       child: Stack(
                                           children: [
                                             Container(margin: const EdgeInsets.only(left: 5),
                                               decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                   image: AssetImage("assets/images/pic.jpg",)
                                               ),
                                                   color: CupertinoColors.label,
                                                   borderRadius: BorderRadius.all(Radius.circular(10))),
                                               height: 95,
                                               width: 120,),
                                             Container(
                                               margin: const EdgeInsets.only(top: 90,),
                                               height: 40,
                                               width: 130,
                                               decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.all(Radius.circular(5))),
                                               child: Stack(
                                                   children: [
                                                     const Padding(
                                                       padding:  EdgeInsets.only(left: 55,top: 7),
                                                       child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                     ),
                                                     Container(
                                                         margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                       padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                       child: SizedBox(
                                                         height: 16,
                                                         width: 16,
                                                         child: CircleAvatar(
                                                           backgroundImage: AssetImage("assets/images/me1.jpg"),),
                                                       )
                                                       ,),
                                                     const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                         child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                   ]),
                                             ),
                                           ]),
                                     ),
                                     //Second Product in same row
                                     Padding(
                                       padding: const EdgeInsets.only(left: 30,top: 10),
                                       child: Stack(
                                           children: [
                                             Container(margin: const EdgeInsets.only(left: 5),
                                               decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
                                                   image: AssetImage("assets/images/new.jpg",)),
                                                   color: CupertinoColors.label,
                                                   borderRadius: BorderRadius.all(Radius.circular(10))),
                                               height: 95,
                                               width: 120,),
                                             Container(
                                               margin: const EdgeInsets.only(top: 90,),
                                               height: 40,
                                               width: 130,
                                               decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.all(Radius.circular(5))),
                                               child: Stack(
                                                   children: [
                                                     const Padding(
                                                       padding:  EdgeInsets.only(left: 55,top: 7),
                                                       child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                                                     ),

                                                     Container(
                                                         margin: const EdgeInsets.only(top: 20,left: 8),
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
                                                       padding:  EdgeInsets.only(left: 55,top: 20.0),
                                                       child: SizedBox(
                                                         height: 16,
                                                         width: 16,
                                                         child: CircleAvatar(
                                                           backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
                                                     const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
                                                         child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
                                                   ]),
                                             ),
                                           ]),
                                     ),
                                   ],),
                               ]),
                         ]),
                   ),
                 ],
               ),
          );
  }
}
//
// // first product thaly wala portion
// Row(
// children: [
// Padding(
// padding: const EdgeInsets.only(left: 35.0,top: 10),
// child: Stack(
// children: [
// Container(margin: EdgeInsets.only(left: 5),
// decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
// image: AssetImage("assets/images/pic.jpg",)
// ),
// color: CupertinoColors.label,
// borderRadius: BorderRadius.all(Radius.circular(10))),
// height: 95,
// width: 120,),
// Container(
// margin: EdgeInsets.only(top: 90,),
// height: 40,
// width: 130,
// decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
// color: Colors.white,
// borderRadius: BorderRadius.all(Radius.circular(5))),
// child: Stack(
// children: [
// const Padding(
// padding: const EdgeInsets.only(left: 55,top: 7),
// child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
// ),
// Container(
// margin: EdgeInsets.only(top: 20,left: 8),
// height: 15,
// width: 40,
// decoration:const BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(25)),
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.topRight,
// colors: [Colors.deepPurple,
// Colors.deepPurpleAccent])),
// alignment: Alignment.center,
// child: Text(" ETH 225",style: TextStyle(color: CupertinoColors.white,fontSize: 7))),
// const Padding(
// padding:  EdgeInsets.only(left: 55,top: 20.0),
// child: SizedBox(
// height: 16,
// width: 16,
// child: CircleAvatar(
// backgroundImage: AssetImage("assets/images/me1.jpg"),),
// )
// ,),
// const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
// child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
// ]),
// ),
// ]),
// ),
// //Second Product in same row
// Padding(
// padding: const EdgeInsets.only(left: 30.0,top: 10),
// child: Stack(
// children: [
// Container(margin: EdgeInsets.only(left: 5),
// decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
// image: AssetImage("assets/images/new.jpg",)),
// color: CupertinoColors.label,
// borderRadius: BorderRadius.all(Radius.circular(10))),
// height: 95,
// width: 120,),
// Container(
// margin: EdgeInsets.only(top: 90,),
// height: 40,
// width: 130,
// decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
// color: Colors.white,
// borderRadius: BorderRadius.all(Radius.circular(5))),
// child: Stack(
// children: [
// const Padding(
// padding: const EdgeInsets.only(left: 55,top: 7),
// child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
// ),
// Container(
// margin: EdgeInsets.only(top: 20,left: 8),
// height: 15,
// width: 40,
// decoration:const BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(25)),
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.topRight,
// colors: [Colors.deepPurple,
// Colors.deepPurpleAccent])),
// alignment: Alignment.center,
// child: Text(" ETH 225",style: TextStyle(color: CupertinoColors.white,fontSize: 7))),
//
// const Padding(
// padding:  EdgeInsets.only(left: 55,top: 20.0),
// child: SizedBox(
// height: 16,
// width: 16,
// child: CircleAvatar(
// backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
// const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
// child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
// ]),
// ),
// ]),
// ),
// ],),
// // Second row third product
// Row(
// children: [
// Padding(
// padding: const EdgeInsets.only(left: 35.0),
// child: Stack(
// children: [
// Container(margin: EdgeInsets.only(left: 5),
// decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
// image: AssetImage("assets/images/Picture.png",)),
// color: CupertinoColors.black,
// borderRadius: BorderRadius.all(Radius.circular(10))),
// height: 95,
// width: 120,),
// Container(
// margin: EdgeInsets.only(top: 90,),
// height: 40,
// width: 130,
// decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
// color: Colors.white,
// borderRadius: BorderRadius.all(Radius.circular(5))),
// child: Stack(
// children: [
// const Padding(
// padding: const EdgeInsets.only(left: 55,top: 7),
// child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
// ),
// Container(
// margin: EdgeInsets.only(top: 20,left: 8),
// height: 15,
// width: 40,
// decoration:const BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(25)),
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.topRight,
// colors: [Colors.deepPurple,
// Colors.deepPurpleAccent])),
// alignment: Alignment.center,
// child: Text(" ETH 225",style: TextStyle(color: CupertinoColors.white,fontSize: 7))),
// const Padding(
// padding:  EdgeInsets.only(left: 55,top: 20.0),
// child: SizedBox(
// height: 16,
// width: 16,
// child: CircleAvatar(
// backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
// const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
// child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
// ])
// ,)
// ])
// ),
// //forth product in second row
// Padding(
// padding: const EdgeInsets.only(left: 30),
// child: Stack(
// children: [
// Container(margin: EdgeInsets.only(left: 5),
// decoration:const BoxDecoration( image: DecorationImage(fit: BoxFit.fitHeight,
// image: AssetImage("assets/images/pic1.jpg",)),
// color: CupertinoColors.label,
// borderRadius: BorderRadius.all(Radius.circular(10))),
// height: 95,
// width: 120,),
// Container(
// margin: EdgeInsets.only(top: 90,),
// height: 40,
// width: 130,
// decoration:const BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 10,),color: Colors.black12,blurRadius: 5)],
// color: Colors.white,
// borderRadius: BorderRadius.all(Radius.circular(5))),
// child: Stack(
// children: [
// const Padding(
// padding:  EdgeInsets.only(left: 55,top: 7),
// child: Text("The Unknow",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
// ),
// Container(
// margin: EdgeInsets.only(top: 20,left: 8),
// height: 15,
// width: 40,
// decoration:const BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(25)),
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.topRight,
// colors: [Colors.deepPurple,
// Colors.deepPurpleAccent])),
// alignment: Alignment.center,
// child: Text(" ETH 225",style: TextStyle(color: CupertinoColors.white,fontSize: 7))),
// const Padding(
// padding:  EdgeInsets.only(left: 55,top: 20.0),
// child: SizedBox(
// height: 16,
// width: 16,
// child: CircleAvatar(
// backgroundImage: AssetImage("assets/images/me1.jpg"),),),),
// const  Padding(padding: EdgeInsets.only(left: 73,top: 23),
// child:Text("imMubashir",style: TextStyle(fontSize: 10),)),
// ]),
// )
// ])
// )
// ])