// ignore_for_file: prefer_const_constructors

import 'package:flippyapp/sereen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/button_list.dart';

class Forget extends StatelessWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("forget password"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
//
              padding: const EdgeInsets.only(
                left: 40.0009765625,
                top: 75.760009765625,
              ),
              child: Image.asset(
                "assets/Logo.png",
                height: 64,
                width: 194,
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Text(
              "Forget password",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // icon: Icon(Icons.person),
                  hintText: 'Enter email here',
                  labelText: 'Email *',
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Reset()));
                },
                icon: Icon(Icons.arrow_circle_right),
                label: Text("submit Now"))
          ],
        ),
      ),
    );
  }
}

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("forget password"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
//
              padding: const EdgeInsets.only(
                left: 40.0009765625,
                top: 75.760009765625,
              ),
              child: Image.asset(
                "assets/Logo.png",
                height: 64,
                width: 194,
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Text(
              "Forget password",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // icon: Icon(Icons.person),
                  hintText: 'Enter Password',
                  labelText: 'New Password *',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // icon: Icon(Icons.person),
                  hintText: 'Enter Again Password',
                  labelText: 'Confrim Password *',
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginSecreen()),
                  );
                },
                icon: Icon(Icons.arrow_circle_right),
                label: Text("Reset Now "))
          ],
        ),
      ),
    );
  }
}
