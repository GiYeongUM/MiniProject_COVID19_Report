import 'package:covid19/Controller/HomeController.dart';
import 'package:covid19/UI/ConfirmedScreen.dart';
import 'package:covid19/UI/SocialDistancingScreen.dart';
import 'package:covid19/UI/VaccineScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Color(0xff16e0e0),
      appBar: AppBar(
        backgroundColor: Color(0xff16e0e0),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                child: Align(
                  child: Text(
                    'COVID19 Status Data',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'BebasNeue'),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(30),
                    scrollDirection: Axis.vertical,
                    children: [
                      Obx(
                        () => AnimatedOpacity(
                          duration: Duration(milliseconds: 700),
                          opacity: homeController.gridAnimation1.value ? 1.0 : 0.0,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            margin: EdgeInsets.only(
                                top: homeController.gridAnimation1.value ? 20 : 0,
                                left: 20,
                                right: 20),
                            child: InkWell(
                              onTap: (){
                                homeController.gridAnimation2.value = false;
                                homeController.gridAnimation3.value = false;
                                Future.delayed(const Duration(milliseconds: 500), () { Get.to(() => SocialDistancingScreen());
                                homeController.gridAnimation2.value = true;
                                homeController.gridAnimation3.value = true;
                                });

                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'image/HomeGrid1.png',
                                    color: Colors.white,
                                    height: 100,
                                    width: 100,
                                  ),
                                  Align(
                                    child: Text(
                                      'Social Distance',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontFamily: 'BebasNeue'),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Obx(
                        () => AnimatedOpacity(
                          duration: Duration(milliseconds: 700),
                          opacity: homeController.gridAnimation2.value ? 1.0 : 0.0,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            margin: EdgeInsets.only(
                                top: homeController.gridAnimation2.value ? 50 : 30),
                            child: InkWell(
                              onTap: (){
                                homeController.gridAnimation1.value = false;
                                homeController.gridAnimation3.value = false;
                                Future.delayed(const Duration(milliseconds: 500), () { Get.to(() => VaccineScreen());
                                homeController.gridAnimation1.value = true;
                                homeController.gridAnimation3.value = true;
                                });

                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'image/HomeGrid2.png',
                                    color: Colors.white,
                                    height: 70,
                                    width: 70,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Align(
                                      child: Text(
                                        'Vaccine',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontFamily: 'BebasNeue'),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Obx(
                        () => AnimatedOpacity(
                          duration: Duration(milliseconds: 700),
                          opacity: homeController.gridAnimation3.value ? 1.0 : 0.0,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            margin: EdgeInsets.only(top: homeController.gridAnimation3.value ? 50 : 30),
                            child: InkWell(
                              onTap: () {
                                    homeController.gridAnimation2.value = false;
                                    homeController.gridAnimation1.value = false;
                                    Future.delayed(const Duration(milliseconds: 500), () { Get.to(() => ConfirmedScreen());
                                    homeController.gridAnimation2.value = true;
                                    homeController.gridAnimation1.value = true;
                                    });

                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'image/HomeGrid3.png',
                                    color: Colors.white,
                                    height: 80,
                                    width: 80,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Align(
                                      child: Text(
                                        'CONFIRMED CASES',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontFamily: 'BebasNeue'),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
