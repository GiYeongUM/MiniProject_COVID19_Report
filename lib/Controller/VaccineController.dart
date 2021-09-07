import 'dart:convert';

import 'package:covid19/Model/VaccineData.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Url.dart';

class VaccineController extends GetxController {
  var vaccineDataList = <VaccineData>[].obs;

  Future<String> getVaccineData() async {
    try {
      var request = http.MultipartRequest('GET', Uri.parse(Url.vaccineUrl + '&cond%5BbaseDate%3A%3AEQ%5D' + '=2021-09-07 00:00:00'));
      print(Uri.parse(Url.vaccineUrl + '&cond%5BbaseDate%3A%3AEQ%5D' + DateTime.now().toString().split('')[0] + '00:00:00'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        String responseStream = await response.stream.bytesToString();
        final parsed = json.decode(responseStream);
        VaccineData vaccineData = VaccineData.fromJson(parsed);
        vaccineDataList.insert(0, vaccineData);
        print('success');
        return 'success';
      } else {
        print('none');
        return 'none';
      }
    } catch (e) {
      print('fail');
      return 'fail';
    }
  }

  String colorResponse(String location, int num) {
    double result = 0.0;
    switch (location) {
      case '서울특별시':
        result = num / 96020;
        break;
      case '부산광역시':
        result = num / 33440;
        break;
      case '대구광역시':
        result = num / 24190;
        break;
      case '인천광역시':
        result = num / 29510;
        break;
      case '광주광역시':
        result = num / 14880;
        break;
      case '대전광역시':
        result = num / 15000;
        break;
      case '울산광역시':
        result = num / 11400;
        break;
      case '세종특별자치시':
        result = num / 3490;
        break;
      case '경기도':
        result = num / 134050;
        break;
      case '강원도':
        result = num / 15150;
        break;
      case '충청북도':
        result = num / 16320;
        break;
      case '충청남도':
        result = num / 22040;
        break;
      case '전라북도':
        result = num / 17920;
        break;
      case '전라남도':
        result = num / 17640;
        break;
      case '경상북도':
        result = num / 26550;
        break;
      case '경상남도':
        result = num / 33550;
        break;
      case '제주특별자치도':
        result = num / 6700;
        break;
    }
    print(result);

    if (result < 10) {
      return '#ed0e0e';
    } else if (result >= 10 && result < 20) {
      return '#ed5c0e';
    }
    else if (result >= 20 && result < 30) {
      return '#ed890e';
    }
    else if (result >= 30 && result < 40) {
      return '#edd70e';
    }
    else if (result >= 40 && result < 50) {
      return '#c8ed0e';
    }else if (result >= 50 && result < 60) {
      return '#60ed0e';
    }else if (result >= 60 && result < 80) {
      return '#0ee6ed';
    }
    else {
      return '#0e76ed';
    }
  }
}
