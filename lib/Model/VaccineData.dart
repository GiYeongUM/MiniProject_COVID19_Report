import 'package:json_annotation/json_annotation.dart';

part 'VaccineData.g.dart';


@JsonSerializable()

class VaccineData {
  int currentCount;
  List<Data> data;
  int matchCount;
  int page;
  int perPage;
  int totalCount;

  VaccineData(this.currentCount, this.data, this.matchCount, this.page,
      this.perPage, this.totalCount);

  factory VaccineData.fromJson(Map<String, dynamic> json) => _$VaccineDataFromJson(json);

  Map<String, dynamic> toJson() => _$VaccineDataToJson(this);
}

@JsonSerializable()
class Data {
  int accumulatedFirstCnt;
  int accumulatedSecondCnt;
  String baseDate;
  int firstCnt;
  int secondCnt;
  String sido;
  int totalFirstCnt;
  int totalSecondCnt;


  Data(this.accumulatedFirstCnt, this.accumulatedSecondCnt, this.baseDate,
      this.firstCnt, this.secondCnt, this.sido, this.totalFirstCnt,
      this.totalSecondCnt);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
