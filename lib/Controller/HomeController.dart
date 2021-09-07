import 'package:get/get.dart';

class HomeController extends GetxController {

  var gridAnimation1 = false.obs;
  var gridAnimation2 = false.obs;
  var gridAnimation3 = false.obs;
  var gridAnimation4 = false.obs;

  @override
  void onReady() {
    // TODO: implement onInit
    gridAnimation1.value = true;
    Future.delayed(const Duration(milliseconds: 300), () { gridAnimation2.value = true; });
    Future.delayed(const Duration(milliseconds: 500), () { gridAnimation3.value = true; });
    Future.delayed(const Duration(milliseconds: 700), () { gridAnimation4.value = true; });
    super.onReady();
  }

}