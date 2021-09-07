import 'dart:convert';

import 'package:covid19/Model/ConfirmedData.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Url.dart';

class ConfirmedController extends GetxController {

  var confirmedDataList = <ConfirmedData>[].obs;
  var seoulStatusConfirm = 0.obs;
  var busanStatusConfirm = 0.obs;
  var daegooStatusConfirm = 0.obs;
  var incheonStatusConfirm = 0.obs;
  var gwangjuStatusConfirm = 0.obs;
  var daejeonStatusConfirm = 0.obs;
  var ulsanStatusConfirm = 0.obs;
  var sejongStatusConfirm = 0.obs;
  var gyeonggiStatusConfirm = 0.obs;
  var gangwonStatusConfirm = 0.obs;
  var chungbukStatusConfirm = 0.obs;
  var chungnamStatusConfirm = 0.obs;
  var jeonbookStatusConfirm = 0.obs;
  var jeonnamStatusConfirm = 0.obs;
  var gyeongbookStatusConfirm = 0.obs;
  var gyeongnamStatusConfirm = 0.obs;
  var jejuStatusConfirm = 0.obs;


  String colorResponse(int num){
     if(num < 100){
       return '#41D012';
     }
     else if(num >= 100 && num < 300){
       return '#fc7001';
     }
     else{
        return '#e60000';
     }
  }


  Future<String> getConfirmedData() async {
    try{
      var request = http.MultipartRequest(
        'GET', Uri.parse(Url.confirmedUrl)
      );
      http.StreamedResponse response = await request.send();
      if(response.statusCode == 200){
        String responseStream = await response.stream.bytesToString();
        final parsed = json.decode(responseStream);
        ConfirmedData confirmedData = ConfirmedData.fromJson(parsed);
        confirmedDataList.insert(0, confirmedData);
        print('success');
        return 'success';
      }
      else{
        print('none');
        return 'none';
      }
    }
    catch(e){
      print('fail');
      return 'fail';
    }
  }
}