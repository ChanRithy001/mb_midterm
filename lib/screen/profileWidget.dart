import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileWidget extends StatefulWidget {
  const profileWidget({super.key});

  @override
  State<profileWidget> createState() => _profileWidgetState();
}

class _profileWidgetState extends State<profileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 300.0,
                      child: Image.network(
                        "https://voyagefox.net/wp-content/uploads/2021/02/angkor-wat-tips-1.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerRight,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.edit,
                          size: 20.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Preferences",
                          style: TextStyle(fontSize: 32,color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              color: Colors.grey,
                            ),
                            child: Text('Natural'),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              color: Colors.grey,
                            ),
                            child: Text('Temple'),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              color: Colors.grey,
                            ),
                            child: Text('Moutain & Waterfall'),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              color: Colors.grey,
                            ),
                            child: Text('Sea & River'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Favorites",
                          style: TextStyle(fontSize: 32,color: Colors.grey),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Center(
                              child: Container(
                                width: 180,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                        fit: BoxFit.contain,
                                        height: 100,
                                      ),
                                    ),
                                    Text("National Museum"),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 180,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                        fit: BoxFit.contain,
                                        height: 100,
                                      ),
                                    ),
                                    Text("National Museum"),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 180,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                        fit: BoxFit.contain,
                                        height: 100,
                                      ),
                                    ),
                                    Text("National Museum"),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 180,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                        fit: BoxFit.contain,
                                        height: 100,
                                      ),
                                    ),
                                    Text("National Museum"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),

                // Profile image
                Positioned(
                  top: 220.0,
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://img.freepik.com/free-vector/front-view-hand-with-fuck-you-symbol_23-2148667270.jpg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        "Sky",
                        style: TextStyle(
                             fontSize: 32),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}