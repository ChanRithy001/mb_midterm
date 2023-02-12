import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_list_tab_scroller/scrollable_list_tab_scroller.dart';

class HomeMenuWidget extends StatefulWidget {
  const HomeMenuWidget({super.key});

  @override
  State<HomeMenuWidget> createState() => _HomeMenuWidgetState();
}

class _HomeMenuWidgetState extends State<HomeMenuWidget> {
  final CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;
  int index = 1;
  int currentMenu = 0;

  final ScrollController controller = ScrollController();

  final data = {
    "Anime": [
      "Item 1 (A)",
      "Item 2 (A)",
      "Item 3 (A)",
      "Item 4 (A)",
    ],
    "Comedy": [
      "Item 1 (B)",
      "Item 2 (B)",
    ],
    "Hollywood": [
      "Item 1 (C)",
      "Item 2 (C)",
      "Item 3 (C)",
      "Item 4 (C)",
      "Item 5 (C)",
    ],
    "Horror": [
      "Item 1 (D)",
      "Item 2 (D)",
      "Item 3 (D)",
      "Item 4 (D)",
      "Item 5 (D)",
    ],
    "Category E": [
      "Item 1 (E)",
      "Item 2 (E)",
      "Item 3 (E)",
      "Item 4 (E)",
      "Item 5 (E)",
    ],
    "Category F": [
      "Item 1 (F)",
      "Item 2 (F)",
      "Item 3 (F)",
      "Item 4 (F)",
      "Item 5 (F)",
    ],
    "Category G": [
      "Item 1 (G)",
      "Item 2 (G)",
      "Item 3 (G)",
      "Item 4 (G)",
      "Item 5 (G)",
    ],
    "Category H": [
      "Item 1 (H)",
      "Item 2 (H)",
      "Item 3 (H)",
      "Item 4 (H)",
      "Item 5 (H)",
    ],
    "Category I": [
      "Item 1 (I)",
      "Item 2 (I)",
      "Item 3 (I)",
      "Item 4 (I)",
      "Item 5 (I)",
      "Item 6 (I)",
      "Item 7 (I)",
      "Item 8 (I)",
      "Item 9 (I)",
    ],
  };

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.withOpacity(0.4),
        elevation: 0,
        title: const Text("Enjoy Your Life"),
      ),
      body: body(),
    );
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
          height: 4,
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
          height: 8,
        ),
        categories(),
      ],
    );
  }

  Widget categories() {
    return Container(
        height: MediaQuery.of(context).size.height - 289,
        child: ScrollableListTabScroller(
          tabBuilder: (BuildContext context, int index, bool active) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              data.keys.elementAt(index),
              style: !active
                  ? null
                  : TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => Column(
            children: [
              Text(
                data.keys.elementAt(index),
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Open Sans',
                    fontSize: 20),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...data.values
                        .elementAt(index)
                        .asMap()
                        .map(
                          (index, value) => MapEntry(
                            index,
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.network(
                                          'https://animecorner.me/wp-content/uploads/2022/12/sasuke.webp',
                                          width: 150,
                                          height: 200,
                                          fit: BoxFit.cover),
                                      // padding: const EdgeInsets.all(12),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(value),
                                    ),
                                    // Container(
                                    //   decoration: const BoxDecoration(
                                    //       color: Colors.blueAccent,
                                    //       borderRadius: BorderRadius.only(
                                    //           bottomRight: Radius.circular(12),
                                    //           bottomLeft: Radius.circular(12))),
                                    //   child: Text("Student"),
                                    //   padding: const EdgeInsets.all(12),
                                    // )
                                  ],
                                ),
                              ),
                            ),
                            // ListTile(
                            //   leading: Container(
                            //     height: 40,
                            //     width: 40,
                            //     decoration: const BoxDecoration(
                            //         shape: BoxShape.circle, color: Colors.grey),
                            //     alignment: Alignment.center,
                            //     child: Text(index.toString()),
                            //   ),
                            //   title: Text(value),
                            // ),
                          ),
                        )
                        .values
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ));
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
