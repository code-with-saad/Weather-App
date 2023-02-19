import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/Text_constant.dart';
import 'package:weather_app/utils/color_constant.dart';
import 'package:weather_app/utils/image_constant.dart';
import 'package:weather_app/views/home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:weather_app/widgets/animated_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(ColorConstant.splashgradient1),
              Color(ColorConstant.splashgradient2),
              Color(ColorConstant.splashgradient3)
            ])),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.40,
                      child: Image.network(
                        ImageConstant.splashgif,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    TextConstant.splashtitle,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(ColorConstant.white),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  typeAnimation(),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(ColorConstant.splashgradient2),
                          minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.20, 60)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeView(),
                            ));
                      },
                      child: Text(
                        TextConstant.getstarted,
                        style: TextStyle(
                            color: Color(ColorConstant.white), fontSize: 20),
                      ))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
