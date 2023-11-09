// Padding(
// padding: const EdgeInsets.only(
// left: 11,
// right: 5),
// child: ListView(
// children: [
// Stack(
// clipBehavior: Clip.none,
// children: [
// ClipRRect(
// borderRadius: const BorderRadius.all(Radius.circular(8)),
// child: SizedBox(
// height: 130,
// width: 126,
// child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
// Positioned(
// top: 6,
// left: 122,
// child: GestureDetector(onTap:() { Navigator.push(context, MaterialPageRoute(builder: (context)=>  ScreenOne()));},
// child: Card(
// shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10)
// )),
// elevation: 5,
// shadowColor: Colors.black,
// surfaceTintColor: Colors.red,
// color: CupertinoColors.white,
// child: Container(
// height: 110,
// width: 210,
// child: Stack(children: [
// const  Positioned(
// left: 25,
// top: 1,
// child: Text("Unknown",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25,
// top:25 ,),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child: Container(
// decoration: const BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
// colors:[CupertinoColors.systemPurple,
// Colors.deepPurpleAccent,
// ])
// ),
// height: 12,
// width: 39,
// alignment: Alignment.center,
// child: const Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),
// )
// )
// ),
// Stack(clipBehavior: Clip.none,
// children: [
// Positioned(left: 75,
// top: 25,
// child:ClipRRect( borderRadius: BorderRadius.circular(25),
// child:Container(color: Colors.black38,
// height: 12,
// width: 65,
// child: const Padding(
// padding: EdgeInsets.only(right: 50),
// child: CircleAvatar(
// backgroundImage:AssetImage("assets/images/me1.jpg"),
// ),
// ),
// ),
// )
// ),
// const Padding(
// padding: EdgeInsets.only(left: 88,
// top: 26),
// child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9.5))),
// Positioned(
// left: 5.8,
// top: 42,
// child: Column(
// children: [
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
// ),
// const SizedBox(height: 16),
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Time Remaining",style: TextStyle(fontSize: 10),),
// ),
// Row(children: [
// Padding(
// padding: const EdgeInsets.only(left: 20,bottom: 10),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child:Container(
// color: Colors.black12,
// height: 15,
// width: 80,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children:const [
// Icon(size:14,textDirection: TextDirection.ltr,
// Icons.access_time_sharp,color: Colors.orange,),
// VerticalDivider(thickness: 1,color: Colors.white60,width: 5),
// Text("00:02:30",style: (TextStyle(fontSize:11,color:Colors.orange,))
// ),
// ]),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25),
// child: Card( color: Colors.white60,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
// child: SizedBox(
// height: 25,
// width: 25,
// child: IconButton(onPressed: (){},
// icon: const Icon(Icons.delete,color: Colors.orange,size: 15)
// ),
// ),
// ),
// ),
// ]),
// ]),
// )
// ])
// ]),
// ),
// ),
// ),
// ),
//
// ]),
// const SizedBox(height: 2,),
// Stack(
// clipBehavior: Clip.none,
// children: [
// ClipRRect(
// borderRadius: const BorderRadius.all(Radius.circular(8)),
// child: SizedBox(
// height: 130,
// width: 126,
// child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
// Positioned(
// top: 6,
// left: 122,
// child: Card(
// shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10)
// )),
// elevation: 5,
// shadowColor: Colors.black,
// surfaceTintColor: Colors.red,
// color: CupertinoColors.white,
// child: Container(
// height: 110,
// width: 210,
// child: Stack(children: [
// const  Positioned(
// left: 25,
// top: 1,
// child: Text("Unknown",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25,
// top:25 ,),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child: Container(
// decoration: const BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
// colors:[
// CupertinoColors.systemPurple,
// Colors.deepPurpleAccent,
// ])
// ),
// height: 12,
// width: 39,
// alignment: Alignment.center,
// child: const Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),
// )
// )
// ),
// Stack(clipBehavior: Clip.none,
// children: [
// Positioned(left: 75,
// top: 25,
// child:ClipRRect( borderRadius: BorderRadius.circular(25),
// child:Container(color: Colors.black38,
// height: 12,
// width: 65,
// child: const Padding(
// padding: EdgeInsets.only(right: 50),
// child: CircleAvatar(
// backgroundImage:AssetImage("assets/images/me1.jpg"),
// ),
// ),
// ),
// )
// ),
// const Padding(
// padding: EdgeInsets.only(left: 88,
// top: 26),
// child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9.5))),
// Positioned(
// left: 5.8,
// top: 42,
// child: Column(
// children: [
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
// ),
// const SizedBox(height: 16),
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Time Remaining",style: TextStyle(fontSize: 10),),
// ),
// Row(children: [
// Padding(
// padding: const EdgeInsets.only(left: 20,bottom: 10),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child:Container(
// color: Colors.black12,
// height: 15,
// width: 80,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children:const [
// Icon(size:14,textDirection: TextDirection.ltr,
// Icons.access_time_sharp,color: Colors.orange,),
// VerticalDivider(thickness: 1,color: Colors.white60,width: 5),
// Text("00:02:30",style: (TextStyle(fontSize:11,color:Colors.orange,))
// ),
// ]),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25),
// child: Card( color: Colors.white60,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
// child: SizedBox(
// height: 25,
// width: 25,
// child: IconButton(onPressed: (){},
// icon: const Icon(Icons.delete,color: Colors.orange,size: 15)
// ),
// ),
// ),
// ),
// ]),
// ]),
// )
// ])
// ]),
// ),
// ),
// ),
//
// ]),
// const SizedBox(height: 2,),
// Stack(
// clipBehavior: Clip.none,
// children: [
// ClipRRect(
// borderRadius: const BorderRadius.all(Radius.circular(8)),
// child: SizedBox(
// height: 130,
// width: 126,
// child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
// Positioned(
// top: 6,
// left: 122,
// child: Card(
// shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10)
// )),
// elevation: 5,
// shadowColor: Colors.black,
// surfaceTintColor: Colors.red,
// color: CupertinoColors.white,
// child: Container(
// height: 110,
// width: 210,
// child: Stack(children: [
// const  Positioned(
// left: 25,
// top: 1,
// child: Text("Unknown",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25,
// top:25 ,),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child: Container(
// decoration: const BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
// colors:[
// CupertinoColors.systemPurple,
// Colors.deepPurpleAccent,
// ])
// ),
// height: 12,
// width: 39,
// alignment: Alignment.center,
// child: const Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),
// )
// )
// ),
// Stack(clipBehavior: Clip.none,
// children: [
// Positioned(left: 75,
// top: 25,
// child:ClipRRect( borderRadius: BorderRadius.circular(25),
// child:Container(color: Colors.black38,
// height: 12,
// width: 65,
// child: const Padding(
// padding: EdgeInsets.only(right: 50),
// child: CircleAvatar(
// backgroundImage:AssetImage("assets/images/me1.jpg"),
// ),
// ),
// ),
// )
// ),
// const Padding(
// padding: EdgeInsets.only(left: 88,
// top: 26),
// child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9.5))),
// Positioned(
// left: 5.8,
// top: 42,
// child: Column(
// children: [
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
// ),
// const SizedBox(height: 16),
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Time Remaining",style: TextStyle(fontSize: 10),),
// ),
// Row(children: [
// Padding(
// padding: const EdgeInsets.only(left: 20,bottom: 10),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child:Container(
// color: Colors.black12,
// height: 15,
// width: 80,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children:const [
// Icon(size:14,textDirection: TextDirection.ltr,
// Icons.access_time_sharp,color: Colors.orange,),
// VerticalDivider(thickness: 1,color: Colors.white60,width: 5),
// Text("00:02:30",style: (TextStyle(fontSize:11,color:Colors.orange,))
// ),
// ]),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25),
// child: Card( color: Colors.white60,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
// child: SizedBox(
// height: 25,
// width: 25,
// child: IconButton(onPressed: (){},
// icon: const Icon(Icons.delete,color: Colors.orange,size: 15)
// ),
// ),
// ),
// ),
// ]),
// ]),
// )
// ])
// ]),
// ),
// ),
// ),
//
// ]),
// const SizedBox(height: 2,),
// Stack(
// clipBehavior: Clip.none,
// children: [
// ClipRRect(
// borderRadius: const BorderRadius.all(Radius.circular(8)),
// child: SizedBox(
// height: 130,
// width: 126,
// child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
// Positioned(
// top: 6,
// left: 122,
// child: Card(
// shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10)
// )),
// elevation: 5,
// shadowColor: Colors.black,
// surfaceTintColor: Colors.red,
// color: CupertinoColors.white,
// child: Container(
// height: 110,
// width: 210,
// child: Stack(children: [
// const  Positioned(
// left: 25,
// top: 1,
// child: Text("Unknown",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25,
// top:25 ,),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child: Container(
// decoration: const BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
// colors:[
// CupertinoColors.systemPurple,
// Colors.deepPurpleAccent,
// ])
// ),
// height: 12,
// width: 39,
// alignment: Alignment.center,
// child: const Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),
// )
// )
// ),
// Stack(clipBehavior: Clip.none,
// children: [
// Positioned(left: 75,
// top: 25,
// child:ClipRRect( borderRadius: BorderRadius.circular(25),
// child:Container(color: Colors.black38,
// height: 12,
// width: 65,
// child: const Padding(
// padding: EdgeInsets.only(right: 50),
// child: CircleAvatar(
// backgroundImage:AssetImage("assets/images/me1.jpg"),
// ),
// ),
// ),
// )
// ),
// const Padding(
// padding: EdgeInsets.only(left: 88,
// top: 26),
// child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9.5))),
// Positioned(
// left: 5.8,
// top: 42,
// child: Column(
// children: [
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
// ),
// const SizedBox(height: 16),
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Time Remaining",style: TextStyle(fontSize: 10),),
// ),
// Row(children: [
// Padding(
// padding: const EdgeInsets.only(left: 20,bottom: 10),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child:Container(
// color: Colors.black12,
// height: 15,
// width: 80,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children:const [
// Icon(size:14,textDirection: TextDirection.ltr,
// Icons.access_time_sharp,color: Colors.orange,),
// VerticalDivider(thickness: 1,color: Colors.white60,width: 5),
// Text("00:02:30",style: (TextStyle(fontSize:11,color:Colors.orange,))
// ),
// ]),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25),
// child: Card( color: Colors.white60,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
// child: SizedBox(
// height: 25,
// width: 25,
// child: IconButton(onPressed: (){},
// icon: const Icon(Icons.delete,color: Colors.orange,size: 15)
// ),
// ),
// ),
// ),
// ]),
// ]),
// )
// ])
// ]),
// ),
// ),
// ),
//
// ]),
// const SizedBox(height: 2,),
// Stack(
// clipBehavior: Clip.none,
// children: [
// ClipRRect(
// borderRadius: const BorderRadius.all(Radius.circular(8)),
// child: SizedBox(
// height: 130,
// width: 126,
// child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
// Positioned(
// top: 6,
// left: 122,
// child: Card(
// shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10)
// )),
// elevation: 5,
// shadowColor: Colors.black,
// surfaceTintColor: Colors.red,
// color: CupertinoColors.white,
// child: Container(
// height: 110,
// width: 210,
// child: Stack(children: [
// const  Positioned(
// left: 25,
// top: 1,
// child: Text("Unknown",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25,
// top:25 ,),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child: Container(
// decoration: const BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
// colors:[
// CupertinoColors.systemPurple,
// Colors.deepPurpleAccent,
// ])
// ),
// height: 12,
// width: 39,
// alignment: Alignment.center,
// child: const Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),
// )
// )
// ),
// Stack(clipBehavior: Clip.none,
// children: [
// Positioned(left: 75,
// top: 25,
// child:ClipRRect( borderRadius: BorderRadius.circular(25),
// child:Container(color: Colors.black38,
// height: 12,
// width: 65,
// child: const Padding(
// padding: EdgeInsets.only(right: 50),
// child: CircleAvatar(
// backgroundImage:AssetImage("assets/images/me1.jpg"),
// ),
// ),
// ),
// )
// ),
// const Padding(
// padding: EdgeInsets.only(left: 88,
// top: 26),
// child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9.5))),
// Positioned(
// left: 5.8,
// top: 42,
// child: Column(
// children: [
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
// ),
// const SizedBox(height: 16),
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Time Remaining",style: TextStyle(fontSize: 10),),
// ),
// Row(children: [
// Padding(
// padding: const EdgeInsets.only(left: 20,bottom: 10),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child:Container(
// color: Colors.black12,
// height: 15,
// width: 80,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children:const [
// Icon(size:14,textDirection: TextDirection.ltr,
// Icons.access_time_sharp,color: Colors.orange,),
// VerticalDivider(thickness: 1,color: Colors.white60,width: 5),
// Text("00:02:30",style: (TextStyle(fontSize:11,color:Colors.orange,))
// ),
// ]),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25),
// child: Card( color: Colors.white60,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
// child: SizedBox(
// height: 25,
// width: 25,
// child: IconButton(onPressed: (){},
// icon: const Icon(Icons.delete,color: Colors.orange,size: 15)
// ),
// ),
// ),
// ),
// ]),
// ]),
// )
// ])
// ]),
// ),
// ),
// ),
//
// ]),
// const SizedBox(height: 2,),
// Stack(
// clipBehavior: Clip.none,
// children: [
// ClipRRect(
// borderRadius: const BorderRadius.all(Radius.circular(8)),
// child: SizedBox(
// height: 130,
// width: 126,
// child: Image.asset("assets/images/pic.jpg",fit:BoxFit.fill))),
// Positioned(
// top: 6,
// left: 122,
// child: Card(
// shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10)
// )),
// elevation: 5,
// shadowColor: Colors.black,
// surfaceTintColor: Colors.red,
// color: CupertinoColors.white,
// child: Container(
// height: 110,
// width: 210,
// child: Stack(children: [
// const  Positioned(
// left: 25,
// top: 1,
// child: Text("Unknown",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25,
// top:25 ,),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child: Container(
// decoration: const BoxDecoration(gradient: LinearGradient(end: Alignment.topRight,begin: Alignment.topLeft,
// colors:[
// CupertinoColors.systemPurple,
// Colors.deepPurpleAccent,
// ])
// ),
// height: 12,
// width: 39,
// alignment: Alignment.center,
// child: const Text("ETC2.01",style: (TextStyle(fontSize: 9,letterSpacing: 0,color: Colors.white,wordSpacing: 0)),),
// )
// )
// ),
// Stack(clipBehavior: Clip.none,
// children: [
// Positioned(left: 75,
// top: 25,
// child:ClipRRect( borderRadius: BorderRadius.circular(25),
// child:Container(color: Colors.black38,
// height: 12,
// width: 65,
// child: const Padding(
// padding: EdgeInsets.only(right: 50),
// child: CircleAvatar(
// backgroundImage:AssetImage("assets/images/me1.jpg"),
// ),
// ),
// ),
// )
// ),
// const Padding(
// padding: EdgeInsets.only(left: 88,
// top: 26),
// child: Text("imMubashir",style:TextStyle(color: Colors.white,fontSize:9.5))),
// Positioned(
// left: 5.8,
// top: 42,
// child: Column(
// children: [
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Top Bid is By You",style:TextStyle(color: Colors.black,fontSize:10)),
// ),
// const SizedBox(height: 16),
// const Padding(
// padding:  EdgeInsets.only(right: 30.0),
// child:   Text("Time Remaining",style: TextStyle(fontSize: 10),),
// ),
// Row(children: [
// Padding(
// padding: const EdgeInsets.only(left: 20,bottom: 10),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(25),
// child:Container(
// color: Colors.black12,
// height: 15,
// width: 80,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children:const [
// Icon(size:14,textDirection: TextDirection.ltr,
// Icons.access_time_sharp,color: Colors.orange,),
// VerticalDivider(thickness: 1,color: Colors.white60,width: 5),
// Text("00:02:30",style: (TextStyle(fontSize:11,color:Colors.orange,))
// ),
// ]),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 25),
// child: Card( color: Colors.white60,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
// child: SizedBox(
// height: 25,
// width: 25,
// child: IconButton(onPressed: (){},
// icon: const Icon(Icons.delete,color: Colors.orange,size: 15)
// ),
// ),
// ),
// ),
// ]),
// ]),
// )
// ])
// ]),
// ),
// ),
// ),
//
// ]),
// ]),
// )