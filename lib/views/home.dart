import 'package:flutter/material.dart';
import 'package:weather_app/controller/home_controller.dart';
import 'package:weather_app/controller/recent_controller.dart';
import 'package:weather_app/utils/Text_constant.dart';
import 'package:weather_app/utils/image_constant.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/views/weatherdata.dart';

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
                image: DecorationImage(
                    image: NetworkImage(ImageConstant.homebg4),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.transparent,
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
                        style: TextStyle(color: Color(ColorConstant.white)),
                        cursorColor: Colors.white,
                        onFieldSubmitted: (value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DataWeather()));
                          setState(() {
                            getweather();
                          });
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Search City",
                          hintStyle:
                              TextStyle(color: Color(ColorConstant.white)),
                          suffixIcon: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DataWeather()));
                                setState(() {
                                  getweather();
                                });
                              },
                              icon: Icon(Icons.search,
                                  color: Color(ColorConstant.white))),
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
              // Text(
              //   "Favourites:",
              //   style:
              //       TextStyle(color: Color(ColorConstant.white), fontSize: 20),
              // ),
              // ListView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   itemCount: TextConstant.favourite.length,
              //   itemBuilder: (context, index) {
              //     return Container(
              //       width: double.infinity,
              //       height: 100,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15),
              //         color: Color.fromARGB(119, 0, 0, 0)
              //       ),
              //       child: Column(
              //         children: [
              //           Text("${TextConstant.favourite[index]}")
              //         ],
              //       ),
              //     );
              //   },
              // )
            ]))));
  }
}
