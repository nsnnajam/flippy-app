// ignore_for_file: prefer_const_constructors

import 'package:flippyapp/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Category"),
      ),
      body: Wrap(
        children: [
          boxcontainer("apple", Icons.apple),
          // SizedBox(
          //   width: 1,
          // ),
          boxcontainer("Fruits", Icons.food_bank),
          // SizedBox(
          //   width: 1,
          // ),
          boxcontainer("Fruits", Icons.food_bank),
          // SizedBox(
          //   width: 1,
          // ),
          boxcontainer("Fruits", Icons.food_bank),
        ],
      ),
    );
  }
}
