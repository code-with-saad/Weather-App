import 'package:flutter/material.dart';
import 'package:weather_app/controller/home_controller.dart';
import 'package:weather_app/utils/Text_constant.dart';
import 'package:weather_app/utils/image_constant.dart';
import 'package:weather_icons/weather_icons.dart';

import '../utils/color_constant.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(ColorConstant.homegradient1),
                  Color(ColorConstant.homegradient2),
                  Color(ColorConstant.homegradient3)
                ])),
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(ColorConstant.homegradient1),
                      Color(ColorConstant.homegradient2),
                      Color(ColorConstant.homegradient3),
                    ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: TextFormField(
                        controller: searchCity,
                        onChanged: (value) {
                          setState(() {
                            getweather();
                            });
                        },
                        style: TextStyle(color: Color(ColorConstant.white)),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Search City",
                          hintStyle:
                              TextStyle(color: Color(ColorConstant.white)),
                          suffixIcon: Icon(Icons.search,
                              color: Color(ColorConstant.white)),
                          prefixIcon: Icon(Icons.location_pin,
                              color: Color(ColorConstant.white)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              FutureBuilder(
                future: getweather(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "RealFeel: ${snapshot.data.main.feelsLike}°",
                          style: TextStyle(
                              color: Color(ColorConstant.white), fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "City: ${snapshot.data.name}",
                          style: TextStyle(
                              color: Color(ColorConstant.white), fontSize: 25),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${snapshot.data.main.temp}°",
                          style: TextStyle(
                              color: Color(ColorConstant.white), fontSize: 50),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          snapshot.data.weather[0].main,
                          style: TextStyle(
                              color: Color(ColorConstant.white), fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                              // color: Color(ColorConstant.homegradient1),
                              borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.thermostat,color: Color(ColorConstant.red),),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "${snapshot.data.main.tempMin}°",
                                      style: TextStyle(
                                      color: Color(ColorConstant.white), fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                              // color: Color(ColorConstant.homegradient1),
                              borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.thermostat,color: Color(ColorConstant.blue),),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "${snapshot.data.main.tempMin}°",
                                      style: TextStyle(
                                      color: Color(ColorConstant.white), fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              )
            ]))));
  }
}
