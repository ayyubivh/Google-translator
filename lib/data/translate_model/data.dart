import 'package:json_annotation/json_annotation.dart';

import 'translation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  List<Translation>? translations;

  Data({this.translations});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
