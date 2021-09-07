import 'package:json_annotation/json_annotation.dart';

part 'KoreaConfirmed.g.dart';

@JsonSerializable()
class KoreaConfirmed {
  String countryName;
  String newCase;
  String totalCase;
  String recovered;
  String death;
  String percentage;
  String newCcase;
  String newFcase;


  KoreaConfirmed(this.countryName, this.newCase, this.totalCase, this.recovered,
      this.death, this.percentage, this.newCcase, this.newFcase);


  factory KoreaConfirmed.fromJson(Map<String, dynamic> json) => _$KoreaConfirmedFromJson(json);

  Map<String, dynamic> toJson() => _$KoreaConfirmedToJson(this);
}
