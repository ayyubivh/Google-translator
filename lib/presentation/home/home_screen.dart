import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_translate/core/colors/colors.dart';
import 'package:google_translate/data/data.dart';
import 'package:google_translate/presentation/widgets/custom_buton.dart';
import '../../controller/home_controller.dart';
import '../../core/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // TranslaterDb().translate(value)
    });

    final HomeController homeController = Get.put(HomeController());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text(
            'Text Translation',
            style: TextStyle(color: kWhite),
          )),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: kWhite,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      onPress: () {
                        translateFrom(context, homeController);
                      },
                      text: homeController.lang.toString(),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.sync_alt,
                          color: kWhite,
                        )),
                    CustomButton(
                      text: homeController.lang.toString(),
                      onPress: () {
                        translateFrom(context, homeController);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0).copyWith(left: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: translateText(homeController),
                    ),
                    kHeight,
                    textContainer(
                      screenHeight,
                      screenWidth,
                    ),
                    kHeight20,
                    RichText(
                      text: translateText(homeController),
                    ),
                    kHeight20,
                    textContainer(
                      screenHeight,
                      screenWidth,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextSpan translateText(HomeController homeController) {
    return TextSpan(
      children: [
        TextSpan(
          text: 'Translate From',
          style: TextStyle(
            color: kWhite.withOpacity(0.5),
          ),
        ),
        TextSpan(
          text: ' (${homeController.lang.toString()})',
          style: const TextStyle(
            color: kWhite,
          ),
        ),
      ],
    );
  }

  Widget textContainer(double screenHeight, double screenWidth) {
    return TextFormField(
      style: const TextStyle(color: kWhite),
      maxLines: 7,
      decoration: InputDecoration(
        filled: true,
        fillColor: secondaryColor,
        focusColor: kWhite,
        hintMaxLines: 8,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Future<dynamic> translateFrom(
      BuildContext context, HomeController homeController) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          child: ListView.builder(
            itemCount: homeController.allLanguages!.languages.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: InkWell(
                  onTap: () {
                    homeController.valueChange(homeController
                        .allLanguages!.languages[index].language
                        .toString());
                    Navigator.pop(context);
                    print(homeController.lang);
                  },
                  child: Text(
                    '${homeController.allLanguages!.languages[index].language}',
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
