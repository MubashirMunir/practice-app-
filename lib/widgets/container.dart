import 'package:flutter/cupertino.dart';

class container extends StatelessWidget {
   container({required this.image});
 final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(image),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );
  }
}
