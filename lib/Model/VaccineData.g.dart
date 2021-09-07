// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VaccineData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VaccineData _$VaccineDataFromJson(Map<String, dynamic> json) {
  return VaccineData(
    json['currentCount'] as int,
    (json['data'] as List<dynamic>)
        .map((e) => Data.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['matchCount'] as int,
    json['page'] as int,
    json['perPage'] as int,
    json['totalCount'] as int,
  );
}

Map<String, dynamic> _$VaccineDataToJson(VaccineData instance) =>
    <String, dynamic>{
      'currentCount': instance.currentCount,
      'data': instance.data,
      'matchCount': instance.matchCount,
      'page': instance.page,
      'perPage': instance.perPage,
      'totalCount': instance.totalCount,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['accumulatedFirstCnt'] as int,
    json['accumulatedSecondCnt'] as int,
    json['baseDate'] as String,
    json['firstCnt'] as int,
    json['secondCnt'] as int,
    json['sido'] as String,
    json['totalFirstCnt'] as int,
    json['totalSecondCnt'] as int,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'accumulatedFirstCnt': instance.accumulatedFirstCnt,
      'accumulatedSecondCnt': instance.accumulatedSecondCnt,
      'baseDate': instance.baseDate,
      'firstCnt': instance.firstCnt,
      'secondCnt': instance.secondCnt,
      'sido': instance.sido,
      'totalFirstCnt': instance.totalFirstCnt,
      'totalSecondCnt': instance.totalSecondCnt,
    };
