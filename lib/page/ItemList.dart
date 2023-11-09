
import 'package:flutter/material.dart';
import '../modules/dataModule.dart';
import 'Details.dart';
class speciesList extends StatelessWidget {
  speciesList({required this.item,}) ;
final Item item;
late TabController tabController ;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(.5),
            child: Card(elevation: .5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         child: ListTile(onTap: (){
           Navigator.push(context, MaterialPageRoute(builder:(context)=> details(item:item)));
           },
           title:  Text(item.name),
            trailing: Text(item.price.toString()),
            leading: Hero(
                tag:1,
              child:Image.network(item.image)
                // child: StreamBuilder<ConnectivityResult>(
                //   stream: Connectivity().onConnectivityChanged,
                //   builder: (context,snapshot){
                //    return  snapshot.data == ConnectivityResult.none ? CircularProgressIndicator() : Image.network(item.image);}
          // ),
    )
         )
            )
          )
        ]);
   }
 }
