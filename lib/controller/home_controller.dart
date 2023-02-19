import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

final searchCity = TextEditingController();

getweather() async {
  var weatherdata = [];
  var baseUrl =
      "https://api.openweathermap.org/data/2.5/weather?q=${searchCity.text.toLowerCase().toString()}&appid=f5783e1fee68d6228723ecc46804ee40";
  var url = Uri.parse(baseUrl);
  var res = await http.get(url);
  var jsonRes = jsonDecode(res.body);
  print(res.body);
  for (var i in jsonRes) {
    weatherdata.add(WeatherModel.fromJson(i));
  }

  return weatherdata;
}
