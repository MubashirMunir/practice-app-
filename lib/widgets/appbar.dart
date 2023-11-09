import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class customappbar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(40);
   customappbar({
    required this.statusclr,
    required this.bgclr,
    required this.title,
    required this.iconcolor
  });
  Color statusclr;
  Color bgclr ;
  String title;
  Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return  PreferredSize(preferredSize: const Size.fromHeight(80),
      child: AppBar(
        centerTitle: true,
        elevation:0,
          actions:[
            
            PopupMenuButton(itemBuilder:(context)=>[
        const PopupMenuItem(child:Text("One")),
              const PopupMenuItem(child:Text("Two")),
              const PopupMenuItem(child:Text("Three")),
              const PopupMenuItem(child:Text("Four")),
              const PopupMenuItem(child:Text("Five")),
            ]),
          ],
          title:Text(title,style: TextStyle(color:iconcolor),
          ),
          systemOverlayStyle:  SystemUiOverlayStyle(
            statusBarColor: statusclr,),
            backgroundColor: bgclr,
         ),
    );
  }
}
