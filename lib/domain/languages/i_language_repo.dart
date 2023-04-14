import 'language_model/language_model.dart';

abstract class LanguageRepo {
  Future<LanguageModel?> getLanguages();
}
