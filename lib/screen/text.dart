import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/misc/screen.dart';
import 'package:scroll_navigation/navigation/scroll_navigation.dart';
import 'package:scroll_navigation/navigation/title_scroll_navigation.dart';
import 'package:scrollable_list_tab_scroller/scrollable_list_tab_scroller.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksforGeeks'),
      ),
    );
  }

}
