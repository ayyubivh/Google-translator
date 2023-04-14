import 'package:flutter/material.dart';
import 'package:google_translate/core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPress});
  final String text;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPress,
      child: Container(
          height: 55,
          width: screenWidth / 2.4,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              color: kWhite,
              fontSize: 20,
            ),
          ))),
    );
  }
}
