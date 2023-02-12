import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boruto'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              // alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      // height: 300.0,
                      child: Image.network(
                        "https://www.sitnas.id/uploads/large/0b8801873389563071d89d9330d7930e.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "Processing",
                                  style: TextStyle(color: Colors.black),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                ClipOval(
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrrHv2fCRdVtBMb75Z_X8IAje1W6zUTMFzfQUHX4aQGsHvY2FPgHmsdBqdJtUgkxjGii8&usqp=CAU",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Complain',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.bookmark,
                                  size: 30.0,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Watch',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "Description",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            const Text(
                              "Description",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: const Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('1'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Profile image
                Positioned(
                  top: 180.0,
                  left: 10,
                  child: Column(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/236x/07/e9/ea/07e9ea1bb52219707c6cb96f9bfc636e.jpg",
                        width: 150,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.cyan,
                width: MediaQuery.of(context).size.width,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
