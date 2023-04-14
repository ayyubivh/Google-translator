// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_moder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateModel _$TranslateModelFromJson(Map<String, dynamic> json) =>
    TranslateModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TranslateModelToJson(TranslateModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
