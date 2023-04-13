import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 55,
      width: screenWidth / 2.4,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: CountryListPick(
        initialSelection: '+91',
        theme: CountryTheme(
          isShowFlag: true,
          isShowTitle: false,
          isShowCode: false,
          isDownIcon: true,
          showEnglishName: true,
        ),
        onChanged: (code) {
          print(code!.name);
        },
      ),
    );
  }
}
