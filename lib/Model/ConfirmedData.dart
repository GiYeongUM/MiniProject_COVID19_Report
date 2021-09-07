import 'package:json_annotation/json_annotation.dart';

import 'KoreaConfirmed.dart';
part 'ConfirmedData.g.dart';



@JsonSerializable()
class ConfirmedData {
  String resultCode;
  String resultMessage;
  Korea korea;
  Korea seoul;
  Korea busan;
  Korea daegu;
  Korea incheon;
  Korea gwangju;
  Korea daejeon;
  Korea ulsan;
  Korea sejong;
  Korea gyeonggi;
  Korea gangwon;
  Korea chungbuk;
  Korea chungnam;
  Korea jeonbuk;
  Korea jeonnam;
  Korea gyeongbuk;
  Korea gyeongnam;
  Korea jeju;

  factory ConfirmedData.fromJson(Map<String, dynamic> json) => _$ConfirmedDataFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmedDataToJson(this);

  ConfirmedData(
      this.resultCode,
      this.resultMessage,
      this.korea,
      this.seoul,
      this.busan,
      this.daegu,
      this.incheon,
      this.gwangju,
      this.daejeon,
      this.ulsan,
      this.sejong,
      this.gyeonggi,
      this.gangwon,
      this.chungbuk,
      this.chungnam,
      this.jeonbuk,
      this.jeonnam,
      this.gyeongbuk,
      this.gyeongnam,
      this.jeju);
}


@JsonSerializable()
class Korea {
  String countryName;
  String newCase;
  String totalCase;
  String recovered;
  String death;
  String percentage;
  String newCcase;
  String newFcase;

  Korea(this.countryName, this.newCase, this.totalCase, this.recovered,
      this.death, this.percentage, this.newCcase, this.newFcase);

  factory Korea.fromJson(Map<String, dynamic> json) => _$KoreaFromJson(json);

  Map<String, dynamic> toJson() => _$KoreaToJson(this);
}

// class ConfirmedData {
//   String? resultCode;
//   String? resultMessage;
//   KoreaConfirmed? koreaConfirmed;
//   KoreaConfirmed seoul;
//   KoreaConfirmed busan;
//   KoreaConfirmed daegu;
//   KoreaConfirmed incheon;
//   KoreaConfirmed gwangju;
//   KoreaConfirmed daejeon;
//   KoreaConfirmed ulsan;
//   KoreaConfirmed sejong;
//   KoreaConfirmed gyeonggi;
//   KoreaConfirmed gangwon;
//   KoreaConfirmed chungbuk;
//   KoreaConfirmed chungnam;
//   KoreaConfirmed jeonbuk;
//   KoreaConfirmed jeonnam;
//   KoreaConfirmed gyeongbuk;
//   KoreaConfirmed gyeongnam;
//   KoreaConfirmed jeju;
//   KoreaConfirmed quarantine;
//
//   ConfirmedData(
//       this.resultCode,
//       this.resultMessage,
//       this.koreaConfirmed,
//       this.seoul,
//       this.busan,
//       this.daegu,
//       this.incheon,
//       this.gwangju,
//       this.daejeon,
//       this.ulsan,
//       this.sejong,
//       this.gyeonggi,
//       this.gangwon,
//       this.chungbuk,
//       this.chungnam,
//       this.jeonbuk,
//       this.jeonnam,
//       this.gyeongbuk,
//       this.gyeongnam,
//       this.jeju,
//       this.quarantine);
//
//   factory ConfirmedData.fromJson(Map<String, dynamic> json) => _$ConfirmedDataFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ConfirmedDataToJson(this);
// }
