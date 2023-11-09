import 'package:flutter/material.dart';
class sliverappbarr extends StatefulWidget {
  const sliverappbarr({Key? key}) : super(key: key);

  @override
  State<sliverappbarr> createState() => _sliverappbarrState();
}

class _sliverappbarrState extends State<sliverappbarr> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.purple,
            excludeHeaderSemantics: true,stretch: true,
            elevation: 5,
            pinned: true,
            snap: true,
            leading: Icon(Icons.menu),
            expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("assets/images/bruc1.jpg",fit: BoxFit.cover,),
            title: Text("hi this is sliver"),),
          ),
         SliverToBoxAdapter(
           child: Column(
             children: [
               Container( color: Colors.red,
                 height: 200,
                 width: 200,),
               Container( color: Colors.orangeAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.pinkAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.green,
                 height: 200,
                 width: 200,),
               Container( color: Colors.red,
                 height: 200,
                 width: 200,),
               Container( color: Colors.orangeAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.pinkAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.green,
                 height: 200,
                 width: 200,), Container( color: Colors.red,
                 height: 200,
                 width: 200,),
               Container( color: Colors.orangeAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.pinkAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.green,
                 height: 200,
                 width: 200,), Container( color: Colors.red,
                 height: 200,
                 width: 200,),
               Container( color: Colors.orangeAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.pinkAccent,
                 height: 200,
                 width: 200,),
               Container( color: Colors.green,
                 height: 200,
                 width: 200,),

             ],
            ),
         )
        ],
    );
  }
}
