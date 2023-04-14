import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'language_model.g.dart';

@JsonSerializable()
class LanguageModel {
  @JsonKey(name: 'data')
  Data? data;

  LanguageModel({this.data});

  factory LanguageModel.fromJson(Map<String, dynamic> json) {
    return _$LanguageModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}
