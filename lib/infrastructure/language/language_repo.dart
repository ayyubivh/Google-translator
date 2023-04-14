import 'package:dio/dio.dart';
import 'package:google_translate/domain/url.dart';
import '../../domain/languages/i_language_repo.dart';
import '../../domain/languages/language_model/language_model.dart';

class TranslaterDb extends LanguageRepo {
  final dio = Dio();
  final url = Url();
  TranslaterDb() {
    dio.options = BaseOptions(
      // baseUrl: url.baseUrl,
      // responseType: ResponseType.plain,
      headers: {
        'Accept-Encoding': 'application/gzip',
        'X-RapidAPI-Key': '03b6d30396mshb93dbeaaa2fb828p155f5fjsn18b8ee576c3f',
        'X-RapidAPI-Host': 'google-translate1.p.rapidapi.com'
      },
    );
  }

  @override
  Future<LanguageModel?> getLanguages() async {
    try {
      final response = await dio.get(url.baseUrl + url.languages);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // print('datas hereee ${LanguageModel.fromJson(response.data)}');
        // final languageList = LanguageModel.fromJson(response.data);
        return LanguageModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      print(e.toString());
    }
    return null;
  }
}
