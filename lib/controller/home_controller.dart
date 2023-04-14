import 'package:get/get.dart';
import 'package:google_translate/data/data.dart';
import 'package:google_translate/data/language_model/data.dart';

class HomeController extends GetxController {
  Data? allLanguages;
  var lang = 'hi'.obs;
  @override
  void onInit() {
    fetchLanguages();
    super.onInit();
  }

  fetchLanguages() async {
    final res = await TranslaterDb().getLanguages();
    if (res != null) {
      allLanguages = res.data;
    }
  }

  valueChange(String text) {
    lang.value = text;
  }
}
