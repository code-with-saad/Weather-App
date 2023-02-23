import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/color_constant.dart';

Widget typeAnimation() {
  return DefaultTextStyle(
    style: TextStyle(fontSize: 20.0, color: Color(ColorConstant.white)),
    child: AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText('Enter a city name to see the Weather',
            speed: Duration(milliseconds: 70)),
        TyperAnimatedText('See Weather All over the world', speed: Duration(milliseconds: 70)),
      ],
      repeatForever: true,
    ),
  );
}
