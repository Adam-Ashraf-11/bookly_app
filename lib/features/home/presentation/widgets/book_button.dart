import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/widgets/custom_button.dart';

class BooksButton extends StatelessWidget {
  const BooksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              title: '19.90 €',
              buttonColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              titleColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              title: 'free Preview',
              buttonColor: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              titleColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
