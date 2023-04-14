import '../language/language_model/language_model.dart';

abstract class TranslationRepo {
  Future<LanguageModel?> getLanguages();
}
