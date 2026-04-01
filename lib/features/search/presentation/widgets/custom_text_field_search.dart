import 'package:flutter/material.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: TextField(
        decoration: InputDecoration(
          hint: Text("Search"),
          suffixIcon: Opacity(opacity: 0.6, child: Icon(Icons.search)),
          enabledBorder: outLineputBorder(),
          focusedBorder: outLineputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder outLineputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
