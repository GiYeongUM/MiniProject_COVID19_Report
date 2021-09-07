// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ConfirmedData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmedData _$ConfirmedDataFromJson(Map<String, dynamic> json) {
  return ConfirmedData(
    json['resultCode'] as String,
    json['resultMessage'] as String,
    Korea.fromJson(json['korea'] as Map<String, dynamic>),
    Korea.fromJson(json['seoul'] as Map<String, dynamic>),
    Korea.fromJson(json['busan'] as Map<String, dynamic>),
    Korea.fromJson(json['daegu'] as Map<String, dynamic>),
    Korea.fromJson(json['incheon'] as Map<String, dynamic>),
    Korea.fromJson(json['gwangju'] as Map<String, dynamic>),
    Korea.fromJson(json['daejeon'] as Map<String, dynamic>),
    Korea.fromJson(json['ulsan'] as Map<String, dynamic>),
    Korea.fromJson(json['sejong'] as Map<String, dynamic>),
    Korea.fromJson(json['gyeonggi'] as Map<String, dynamic>),
    Korea.fromJson(json['gangwon'] as Map<String, dynamic>),
    Korea.fromJson(json['chungbuk'] as Map<String, dynamic>),
    Korea.fromJson(json['chungnam'] as Map<String, dynamic>),
    Korea.fromJson(json['jeonbuk'] as Map<String, dynamic>),
    Korea.fromJson(json['jeonnam'] as Map<String, dynamic>),
    Korea.fromJson(json['gyeongbuk'] as Map<String, dynamic>),
    Korea.fromJson(json['gyeongnam'] as Map<String, dynamic>),
    Korea.fromJson(json['jeju'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConfirmedDataToJson(ConfirmedData instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'resultMessage': instance.resultMessage,
      'korea': instance.korea,
      'seoul': instance.seoul,
      'busan': instance.busan,
      'daegu': instance.daegu,
      'incheon': instance.incheon,
      'gwangju': instance.gwangju,
      'daejeon': instance.daejeon,
      'ulsan': instance.ulsan,
      'sejong': instance.sejong,
      'gyeonggi': instance.gyeonggi,
      'gangwon': instance.gangwon,
      'chungbuk': instance.chungbuk,
      'chungnam': instance.chungnam,
      'jeonbuk': instance.jeonbuk,
      'jeonnam': instance.jeonnam,
      'gyeongbuk': instance.gyeongbuk,
      'gyeongnam': instance.gyeongnam,
      'jeju': instance.jeju,
    };

Korea _$KoreaFromJson(Map<String, dynamic> json) {
  return Korea(
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

Map<String, dynamic> _$KoreaToJson(Korea instance) => <String, dynamic>{
      'countryName': instance.countryName,
      'newCase': instance.newCase,
      'totalCase': instance.totalCase,
      'recovered': instance.recovered,
      'death': instance.death,
      'percentage': instance.percentage,
      'newCcase': instance.newCcase,
      'newFcase': instance.newFcase,
    };
