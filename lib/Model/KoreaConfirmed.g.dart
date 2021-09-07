// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'KoreaConfirmed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KoreaConfirmed _$KoreaConfirmedFromJson(Map<String, dynamic> json) {
  return KoreaConfirmed(
    json['countryName'] as String,
    json['newCase'] as String,
    json['totalCase'] as String,
    json['recovered'] as String,
    json['death'] as String,
    json['percentage'] as String,
    json['newCcase'] as String,
    json['newFcase'] as String,
  );
}

Map<String, dynamic> _$KoreaConfirmedToJson(KoreaConfirmed instance) =>
    <String, dynamic>{
      'countryName': instance.countryName,
      'newCase': instance.newCase,
      'totalCase': instance.totalCase,
      'recovered': instance.recovered,
      'death': instance.death,
      'percentage': instance.percentage,
      'newCcase': instance.newCcase,
      'newFcase': instance.newFcase,
    };
