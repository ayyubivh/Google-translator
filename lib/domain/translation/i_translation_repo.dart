import 'package:google_translate/domain/translation/translate_model/translate_moder.dart';

abstract class TranslationRepo {
  Future<TranslateModel?> getTranslate(
    String message,
    String translatorMessage,
  );
}
