import 'package:flutter/material.dart';
import 'package:midterm/screen/nearMeWidget.dart';

void main() {
  runApp(route("nearMe"));
}

route(String context) {
  return MaterialApp(
    initialRoute: context,
    debugShowCheckedModeBanner: false,
    routes: {
      'nearMe': (context) => NearMeWidget(),
    },
  );
}
