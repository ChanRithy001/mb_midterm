import 'dart:ffi';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int currentMenu = 0;
  int index = 1;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leadingWidth: 30,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
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
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          items: [
            //1st Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
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
                image: DecorationImage(
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
                image: DecorationImage(
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
                image: DecorationImage(
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
                image: DecorationImage(
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
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayInterval: Duration(milliseconds: 15000),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentMenu = index + 1;
              });
              print(index);
            },
          ),
        ),
        SizedBox(
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
        )
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
}
