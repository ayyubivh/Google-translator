import 'package:json_annotation/json_annotation.dart';

import 'language.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'languages')
  List<Language> languages;

  Data({this.languages = const []});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
