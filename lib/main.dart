import 'package:flutter/material.dart';
import 'package:midterm/screen/homeWidget.dart';
import 'package:midterm/screen/nearMeWidget.dart';

void main() {
  runApp(route("home"));
}

route(String context) {
  return MaterialApp(
    initialRoute: context,
    debugShowCheckedModeBanner: false,
    routes: {
      'nearMe': (context) => NearMeWidget(),
      'home': (context) => HomeWidget()
    },
  );
}
