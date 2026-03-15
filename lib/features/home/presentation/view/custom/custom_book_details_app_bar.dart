import 'package:flutter/material.dart';

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
      
       ],
      ),
    );
  }
}