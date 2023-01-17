// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flippyapp/constants.dart';
import 'package:flippyapp/sereen/product_class.dart';
import 'package:flippyapp/widget/Product_card.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductCard(
              image: "assets/Logo.png",
              title: "god sale",
              price: 950,
              press: () {},
              bgColor: bgColor),
          ProductCard(
              image: "assets/Logo.png",
              title: "god sale",
              price: 950,
              press: () {},
              bgColor: bgColor),
          ProductCard(
              image: "assets/Logo.png",
              title: "god sale",
              price: 950,
              press: () {},
              bgColor: bgColor),
          ProductCard(
              image: "assets/Logo.png",
              title: "god sale",
              price: 950,
              press: () {},
              bgColor: bgColor),
          // ListView.builder(
          //   itemCount: demoProduct.length,
          //   itemBuilder: (context, index) {
          //     return Container(
          //       padding: EdgeInsets.all(10),
          //       child: Image.asset("demoProduct"[index]),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
