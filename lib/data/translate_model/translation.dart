import 'package:json_annotation/json_annotation.dart';

part 'translation.g.dart';

@JsonSerializable()
class Translation {
  String? translatedText;

  Translation({this.translatedText});

  factory Translation.fromJson(Map<String, dynamic> json) {
    return _$TranslationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TranslationToJson(this);
}
