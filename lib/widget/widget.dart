// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget boxcontainer() {
  return Column(
    children: [
      Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(248, 247, 244, 244), shape: BoxShape.circle),
        child: Icon(
          Icons.local_grocery_store_rounded,
          size: 40,
        ),
      ),
      Text("Grocery")
    ],
  );
}
