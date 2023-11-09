import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage
      ("assets/images/bg.jpg",),fit: BoxFit.fill)),
      child: Scaffold(backgroundColor: Colors.transparent,
          appBar: AppBar(),
          body:   Padding(
            padding: const EdgeInsets.only(left: 50.0,right: 50,top: 100,bottom: 150),
            child:  FlipCard(alignment: Alignment.center,
                       fill: Fill.fillFront,
                      direction:FlipDirection.HORIZONTAL,
                      flipOnTouch: true,
                      speed: 600,
                      side: CardSide.FRONT,
                      back: Stack(
                          children: [
                            Padding(
                         padding: const EdgeInsets.only(bottom: 220.0),
                         child: Center(
                           child: Container(
                             height: 100,
                             width: 100,
                             decoration: BoxDecoration(boxShadow: [ BoxShadow(blurRadius: 5,blurStyle: BlurStyle.outer,color: Colors.black)],
                               borderRadius: BorderRadius.circular(150),
                               image: const DecorationImage(
                                   image: AssetImage("assets/images/me2.jpg"),fit: BoxFit.fitWidth,))
                           ),
                         ),
                       ),
                        Container(
                          decoration: BoxDecoration(
                              border:const Border(
                                bottom: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                                top: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                                left: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                                right: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                              ),
                              gradient:const LinearGradient(
                                  colors: [
                                Colors.transparent,
                                Colors.transparent,],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter
                              ),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                       const Padding(
                          padding:  EdgeInsets.only(top: 220.0),
                          child: Center(
                            child: Column(children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 20.0),
                                child: Row(children: [
                                  Text("Name : "),
                                  Text("Mubashir Munir",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(left: 20.0,top: 5),
                                child: Row(children: [
                                  Text("Next of Kin : "),
                                  Text("Munir Ahmed",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20.0,top: 5),
                                child: Row(children: [
                                  Text("Age : "),
                                  Text("23",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20.0,top: 5),
                                child: Row(children: [
                                  Text("CNIC : "),
                                  Text("31101-7836288-1",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20.0,top: 5),
                                child: Row(children: [
                                  Text("Domain : "),
                                  Text("Mobile App Developer",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20.0,top: 5),
                                child: Row(children: [
                                  Text("Course : "),
                                  Text("BSIT",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],),
                              )
]),
                          ),
                        )
                      ]),
                      front: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 220.0),
                              child: Center(
                                child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(boxShadow: [ BoxShadow(blurRadius: 5,blurStyle: BlurStyle.outer,color: Colors.black)],
                                        borderRadius: BorderRadius.circular(150),
                                        image: const DecorationImage(image: AssetImage("assets/images/me2.jpg"),fit: BoxFit.fitWidth))
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:const Border(
                                    bottom: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                                    top: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                                    left: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                                    right: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,),
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            const Padding(
                              padding:  EdgeInsets.only(top: 220.0),
                              child: Center(
                                child: Column(children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 20.0),
                                    child: Row(children: [
                                      Text("Name : "),
                                      Text("Mubashir Munir",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 20.0,top: 5),
                                    child: Row(children: [
                                      Text("Next of Kin : "),
                                      Text("Munir Ahmed",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,top: 5),
                                    child: Row(children: [
                                      Text("Age : "),
                                      Text("22",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,top: 5),
                                    child: Row(children: [
                                      Text("CNIC : "),
                                      Text("31101-7836288-1",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,top: 5),
                                    child: Row(children: [
                                      Text("Domain : "),
                                      Text("Mobile App Developer",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0,top: 5),
                                    child: Row(children: [
                                      Text("Course : "),
                                      Text("BSIT",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),
                                  )
                                ]),
                              ),
                            )
                          ]),
                  ),
          ),
      ),
    );
  }
}
