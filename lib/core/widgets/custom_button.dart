import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.buttonColor,  this.borderRadius, required this.titleColor});
 final String title ;

 final Color buttonColor ;
 final Color titleColor ;
 final BorderRadius? borderRadius ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
         child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16)
          )
        ),
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(color: titleColor),
        ),
      ),
    );
  }
}

