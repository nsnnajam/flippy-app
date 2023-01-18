// ignore_for_file: prefer_const_constructors

import 'package:flippyapp/ptofile.dart';
import 'package:flippyapp/sereen/Best_seller.dart';
import 'package:flippyapp/sereen/Home_page.dart';
import 'package:flippyapp/sereen/all_category.dart';
import 'package:flippyapp/sereen/cart.dart';
import 'package:flippyapp/sereen/choise_location.dart';
import 'package:flippyapp/sereen/login.dart';
import 'package:flutter/material.dart';

class Bottomsheet extends StatefulWidget {
  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    LoginSecreen(),
    AllCategory(),
    CartProduct(),
    ProfileSecreen()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text("App"),
          // ),
          // appBar: AppBar(
          //   title: Text("Cart App"),
          //   centerTitle: true,
          // ),
          body: screens[currentIndex],

          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color.fromARGB(255, 22, 218, 45),
              unselectedItemColor: Color.fromARGB(255, 5, 5, 5),
              selectedFontSize: 18,
              unselectedFontSize: 15,
              showSelectedLabels: true,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category,
                  ),
                  label: "Category",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ]),
        ),
      ),
    );
  }
}
