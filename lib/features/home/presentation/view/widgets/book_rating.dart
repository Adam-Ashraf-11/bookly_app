import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        Text("4.8", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("(260)"),
      ],
    );
  }
}
