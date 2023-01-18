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

Widget titleText(String text,) {
  return Text(
    text,
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}

// Widget cardhelp() {
//   return Card(
//     margin: EdgeInsets.all(10),
//     child: Container(
//       height: 100,
//       width: 500,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Image.asset(
//                 "assets/Logo.png",
//                 width: 100,
//                 height: 100,
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }
