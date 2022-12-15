import 'package:flutter/material.dart';

class NearMeWidget extends StatelessWidget {
  const NearMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Near Me",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leadingWidth: 30,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: body(width),
    );
  }

  Widget body(double width) {
    return ListView(
      padding: EdgeInsets.only(top: 32),
      children: [
        getImageRow(width),
        SizedBox(
          height: 20,
        ),
        getImageRow(width),
        SizedBox(
          height: 20,
        ),
        getImageRow(width),
        SizedBox(
          height: 20,
        ),
        getImageRow(width),
        SizedBox(
          height: 20,
        ),
        getImageRow(width),
        SizedBox(
          height: 20,
        ),
        getImageRow(width),
        SizedBox(
          height: 20,
        ),
        getImageRow(width),
      ],
    );
  }

  Widget getImageRow(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
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
        SizedBox(
          width: 20,
        ),
        Column(
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
      ],
    );
  }
}
