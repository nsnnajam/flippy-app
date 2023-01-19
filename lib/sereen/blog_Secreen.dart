// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BlogSecreen extends StatelessWidget {
  const BlogSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              child: Column(
                children: [
                  Image.asset("assets/Image (1).png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text("this good blog"),
                  SizedBox(
                    height: 020,
                  ),
                  Text(
                      'bolg is where we post ths we can use tis it is hk gh dgd ye j hk l ha  ')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
