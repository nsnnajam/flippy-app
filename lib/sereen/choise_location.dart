// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChoiseLocation extends StatelessWidget {
  const ChoiseLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choise Location"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                "assets/Logo.png",
                height: 64,
                width: 194,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/undraw.png",
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChoiseLocation()));
                },
                icon: Icon(Icons.arrow_circle_right),
                label: Text("Use current Location")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChoiseLocation()));
                },
                icon: Icon(Icons.arrow_circle_right),
                label: Text("Choise Manually Location")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("location"))
          ],
        ),
      ),
    );
  }
}
