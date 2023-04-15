import 'package:get/get.dart';

import '../domain/languages/language_model/data.dart';
import '../infrastructure/language/language_repo.dart';

class HomeController extends GetxController {
  Data? allLanguages;
  var lang = 'hi'.obs;
  @override
  void onInit() {
    fetchLanguages();
    super.onInit();
  }

  fetchLanguages() async {
    final res = await LanguageDb().getLanguages();
    if (res != null) {
      allLanguages = res.data;
    }
  }

  valueChange(String text) {
    lang.value = text;
  }
}
