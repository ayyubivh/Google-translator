import 'package:flutter/material.dart';
import 'package:google_translate/core/colors/colors.dart';
import 'package:google_translate/presentation/widgets/custom_buton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text(
            'Text Translation',
            style: TextStyle(color: kWhite),
          )),
      body: Column(
        children: [
          Divider(
            color: kWhite,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sync_alt,
                      color: kWhite,
                    )),
                CustomButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
