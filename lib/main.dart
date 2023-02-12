import 'package:flutter/material.dart';
import 'package:midterm/screen/detailWidget.dart';
import 'package:midterm/screen/homeMenu.dart';
import 'package:midterm/screen/homeWidget.dart';
import 'package:midterm/screen/nearMeWidget.dart';
import 'package:midterm/screen/placeDetailWidget.dart';
import 'package:midterm/screen/profileWidget.dart';
import 'package:midterm/screen/text.dart';

void main() {
  runApp(route("HomeMenu"));
}

route(String context) {
  return MaterialApp(
    initialRoute: context,
    debugShowCheckedModeBanner: false,
    routes: {
      // 'nearMe': (context) => NearMeWidget(),
      // 'home': (context) => HomeWidget(),
      // 'profile': (context) => profileWidget(),
      // 'place_detail': (context) => placeDetailWidget(),
      
      'HomeMenu':(context) => HomeMenuWidget(),
      'Detail':(context) => DetailScreen(),
      'Test':(context) => Test(),
    },
  );
}
