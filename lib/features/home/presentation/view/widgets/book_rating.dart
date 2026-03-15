import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,this.mainAxisAlignment=MainAxisAlignment.start });
final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 4,),
        Text("4.8", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(width: 3,),
        Text("(260)"),
      ],
    );
  }
}
