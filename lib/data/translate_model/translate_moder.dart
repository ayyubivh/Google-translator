import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'translate_moder.g.dart';

@JsonSerializable()
class TranslateModel {
  Data? data;

  TranslateModel({this.data});
  TranslateModel.create({required this.data});
  factory TranslateModel.fromJson(Map<String, dynamic> json) {
    return _$TranslateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TranslateModelToJson(this);
}
