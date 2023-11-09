import 'package:flutter/cupertino.dart';

class covid19 extends StatelessWidget {
  String text,value;
   covid19({Key? key, required this.text , required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Text(value),
        ],)
      ],
      ),
    );
  }
}
