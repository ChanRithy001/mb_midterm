import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class placeDetailWidget extends StatefulWidget {
  const placeDetailWidget({super.key});

  @override
  State<placeDetailWidget> createState() => _placeDetailWidgetState();
}

class _placeDetailWidgetState extends State<placeDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.4),
        elevation: 0,
        title: Row(
          children: const [
            Icon(Icons.exit_to_app),
            const Spacer(flex: 1),
            Icon(Icons.heart_broken),
            Icon(Icons.heart_broken),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300.0,
              child: Image.network(
                "https://st2.depositphotos.com/1000528/8846/i/950/depositphotos_88463518-stock-photo-phnom-penh-royal-palace-complex.jpg",
                fit: BoxFit.cover,
              ),
            ),
            DefaultTabController(
              length: 3, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TabBar(
                        // labelColor: Colors.red,
                        unselectedLabelColor: Colors.green,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                // color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text("About"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text("Photos"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text("Reviews"),
                              ),
                            ),
                          ),
                          // Tab(text: 'Tab 4'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 450, //height of TabBarView
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Royal Palace",
                                    style: TextStyle(
                                      fontSize: 32.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.amber,
                                    ),
                                    Text("  7K reviews"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                            "The Royal Palace is a complex of buildings which serves as the royal residence of the King of Cambodia. It's full name in the Kmer Languageis Preah Barom Reachaviang Chaktomuk Serei Mongkol."),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                            "(`2.6km) Sothearos between street 240 & 184. Phnom Penh"),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Related Palaces",
                                    style: TextStyle(
                                      fontSize: 32.0,
                                      color: Colors.grey,
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                                    fit: BoxFit.contain,
                                                    height: 100,
                                                  ),
                                                ),
                                                const Text("National Museum"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              childAspectRatio: 1.0,
                              padding: const EdgeInsets.all(8.0),
                              mainAxisSpacing: 8.0,
                              crossAxisSpacing: 8.0,
                              children: <String>[
                                "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                "https://media.istockphoto.com/id/494298363/photo/the-royal-palace-in-phnom-penh-cambodia.jpg?s=612x612&w=0&k=20&c=P85_97q1rs4fddpjVIG2kZQrWE3Isnar0Heh2k7ErLc=",
                                "https://media.istockphoto.com/id/494298363/photo/the-royal-palace-in-phnom-penh-cambodia.jpg?s=612x612&w=0&k=20&c=P85_97q1rs4fddpjVIG2kZQrWE3Isnar0Heh2k7ErLc=",
                                "https://t4.ftcdn.net/jpg/02/71/37/17/360_F_271371790_5BbixlnEcyoqWyRuw9zJPzdaMqkHZ37V.webp",
                                "https://media.istockphoto.com/id/607461446/photo/royal-palace-in-phnom-penh.jpg?s=612x612&w=0&k=20&c=opTfLzGxruk9aHT0K5YTStcumuweL9npX1RpLxl6Gg8=",
                                "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                                "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                              ].map((String url) {
                                return GridTile(
                                    child: Image.network(url,
                                        fit: BoxFit.contain));
                              }).toList()),
                        ),
                        Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ListTile(
                                isThreeLine: true,
                                leading: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",
                                  ),
                                ),
                                title: Text("Sok Saov"),
                                // subtitle: Text("Nice place"),
                                trailing: Text("3:30 pm"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                    Text('Nice palace'),
                                  ],
                                ),
                              ),
                              ListTile(
                                isThreeLine: true,
                                leading: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",
                                  ),
                                ),
                                title: Text("Sok Saov"),
                                // subtitle: Text("Nice place"),
                                trailing: Text("3:30 pm"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                    Text('Nice palace'),
                                  ],
                                ),
                              ),
                              ListTile(
                                isThreeLine: true,
                                leading: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",
                                  ),
                                ),
                                title: Text("Sok Saov"),
                                // subtitle: Text("Nice place"),
                                trailing: Text("3:30 pm"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                    Text('Nice palace'),
                                  ],
                                ),
                              ),
                              const Center(
                                child: Text(
                                  "Add a Reviews",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}