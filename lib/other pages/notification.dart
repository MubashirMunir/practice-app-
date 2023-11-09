import 'package:flutter/material.dart';
class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Center(child: ClipRRect(borderRadius: BorderRadius.circular(55),
            child: Container(width: 450,height: 30,
            decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft,end:Alignment.topRight,
              colors: [
                Colors.deepPurple,
                Colors.deepPurpleAccent,
              ],
            )
            )),
          ),
          ),
          IconButton(
          onPressed:(){showAlertDialog(context);},
          icon: Icon(Icons.notification_add_outlined),),
        ],) ,
         ),
    );
  }
}
showAlertDialog(BuildContext context){
  Widget okbutton =ElevatedButton(onPressed: Navigator.of(context).pop, child: null,);
  AlertDialog alertDialog =AlertDialog(title: Text("Notification "),
    content: Text("This is a wrong pop up box with on pressing notification"),
    actions: [ElevatedButton(onPressed: Navigator.of(context).pop,child: Text("Ok"),)],);
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}