// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flippyapp/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({Key? key}) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset(
                  "assets/Logo.png",
                  width: 100,
                ),
                title: Text("Apple"),
                subtitle: Text("frsh apple"),
              ),
            ),
            GestureDetector(
              child: InkWell(
                child: Card(
                  child: Container(
                    height: 110,
                    width: 350,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Logo.png",
                          width: 80,
                          height: 50,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: titleText(
                                "orange juice",
                              ),
                            ),
                            Text("Unit Price : 1450"),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.add)),
                                Text("02:kg"),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.remove)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 79, 6, 182),
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("2400")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
