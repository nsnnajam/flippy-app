// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flippyapp/constants.dart';
import 'package:flippyapp/section_title.dart';
import 'package:flippyapp/sereen/Best_seller.dart';
import 'package:flippyapp/sereen/product_class.dart';
import 'package:flippyapp/widget/Product_card.dart';
import 'package:flippyapp/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset("assets/Logo.png"),
              accountName: Text("najam"),
              accountEmail: Text("nsn@gmail.com"),
            ),
            ListTile(
              tileColor: Colors.grey,
              onTap: () {},
              title: Text("Wish list"),
              leading: Icon(Icons.favorite),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.grey,
              onTap: () {},
              title: Text("address"),
              leading: Icon(Icons.location_city),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.grey,
              onTap: () {},
              title: Text("Order"),
              leading: Icon(Icons.receipt),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.grey,
              onTap: () {},
              title: Text("Whatsapp us"),
              leading: Icon(Icons.whatsapp),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.grey,
              onTap: () {},
              title: Text("Blog"),
              leading: Icon(Icons.post_add),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.grey,
              onTap: () {},
              title: Text("Logout"),
              leading: Icon(Icons.logout_outlined),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.grey,
              onTap: () {},
              title: Text("Dark theme"),
              leading: Icon(Icons.abc_outlined),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/banner.png",
                height: 138,
                width: 345,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text("All catagoreies"),
                  SizedBox(
                    width: 150,
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward),
                      label: Text("View All"))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  boxcontainer(),
                  SizedBox(
                    width: 10,
                  ),
                  boxcontainer(),
                  SizedBox(
                    width: 10,
                  ),
                  boxcontainer(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SectionTitle(title: "Best Seller", pressSeeAll: () {}),
            BestSeller(),
            SectionTitle(title: "fruits", pressSeeAll: () {}),
            Row(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
