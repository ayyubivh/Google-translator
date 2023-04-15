import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:google_translate/domain/translation/i_translation_repo.dart';
import 'package:google_translate/domain/translation/translate_model/translate_moder.dart';
import 'package:google_translate/domain/url.dart';

class TranslationDb extends TranslationRepo {
  final dio = Dio();
  TranslationDb() {
    dio.options = BaseOptions(
      headers: {
        'content-type': 'application/x-www-form-urlencoded',
        'Accept-Encoding': 'application/gzip',
        'X-RapidAPI-Key': '03b6d30396mshb93dbeaaa2fb828p155f5fjsn18b8ee576c3f',
        'X-RapidAPI-Host': 'google-translate1.p.rapidapi.com',
      },
    );
  }

  @override
  Future<TranslateModel?> getTranslate(
      String message, String translatorMessage) async {
    try {
      final response =
          await dio.post(Url().baseUrl + Url().translate, queryParameters: {
        'q': message,
        'target': translatorMessage,
      });
      print('...>>>>> responseeee ${response.data}');
      if (response.statusCode == 200 || response.statusCode == 201) {}
      {
        final result = TranslateModel.fromJson(response.data);
        print('response ===>>>>>> ${result.toString()}');
        return result;
      }
    } on DioError catch (e) {
      print(e.response?.data);
      log(e.toString());
    }
    return null;
  }
}
