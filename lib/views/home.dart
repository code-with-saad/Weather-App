import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/controller/home_controller.dart';
import 'package:weather_app/utils/Text_constant.dart';
import 'package:weather_app/utils/image_constant.dart';

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
                          setState(() {});
                        },
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
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
                            borderRadius: BorderRadius.circular(50.0),
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
                    if (searchCity.text.isEmpty) {
                      return Text(
                        "Please Enter a City name.",
                        style: TextStyle(
                          color: Color(ColorConstant.red),
                        ),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "RealFeel: ${snapshot.data[index].main.feels_like}°",
                                style: TextStyle(
                                    color: Color(ColorConstant.white)),
                              )
                            ],
                          );
                        },
                      );
                    }
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              )
            ]))));
  }
}
