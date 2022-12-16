import 'dart:ffi';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:midterm/screen/navBarWidget.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  double width = 0;
  int currentMenu = 0;
  int index = 1;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leadingWidth: 30,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: body(),
    );
    ;
  }

  Widget body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          items: [
            //1st Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.fVskLfV-gK8qLYzrYPFYCwHaFj?pid=ImgDet&rs=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.fVskLfV-gK8qLYzrYPFYCwHaFj?pid=ImgDet&rs=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.fVskLfV-gK8qLYzrYPFYCwHaFj?pid=ImgDet&rs=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.MmWgDAzuCouLskJujAo4MgHaFj?pid=ImgDet&rs=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //5th Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.fVskLfV-gK8qLYzrYPFYCwHaFj?pid=ImgDet&rs=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            initialPage: index - 1,
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(milliseconds: 15000),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentMenu = index + 1;
              });
              print(index);
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
              child: menuItemWidget(1),
            ),
            SizedBox(
              width: 20,
              child: menuItemWidget(2),
            ),
            SizedBox(
              width: 20,
              child: menuItemWidget(3),
            ),
            SizedBox(
              width: 20,
              child: menuItemWidget(4),
            ),
            SizedBox(
              width: 20,
              child: menuItemWidget(5),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        getCategory('Near Me'),
        const SizedBox(
          height: 50,
        ),
        getCategory('Top Places')
      ],
    );
  }

  Widget menuItemWidget(int number) {
    Icon icon = Icon(
        number == currentMenu ? Icons.circle : Icons.circle_outlined,
        size: 16,
        color: Colors.green);

    return GestureDetector(
        onTap: () {
          setState(() {
            currentMenu = number;
            buttonCarouselController.jumpToPage(number - 1);
          });
        },
        child: icon);
  }

  Widget getCategory(String text) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.08,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              width: width * 0.5,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "More",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              getImage(rigth: 10, left: 25),
              getImage(rigth: 10),
              getImage(rigth: 10),
              getImage(rigth: 10),
              getImage(rigth: 10),
              getImage(rigth: 10)
            ],
          ),
        )
      ],
    );
  }

  Widget getImage({double rigth = 0, double left = 0}) {
    return Container(
      padding: EdgeInsets.only(left: left, right: rigth),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.network(
              'https://th.bing.com/th/id/OIP.fVskLfV-gK8qLYzrYPFYCwHaFj?pid=ImgDet&rs=1',
              fit: BoxFit.cover,
              width: width * 0.4,
              height: 100,
            ),
          ),
          Text(
            "Royal Palace",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
