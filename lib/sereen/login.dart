// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flippyapp/sereen/choise_location.dart';
import 'package:flippyapp/sereen/forget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class LoginSecreen extends StatelessWidget {
  const LoginSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                "welcome you",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                // width: 200,
                height: 400,
                child: ContainedTabBarView(
                  tabs: [
                    Text('sign in', style: TextStyle(color: Colors.grey)),
                    Text(
                      'register',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                  views: [
                    Container(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "enter user name",
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: "enter user password",
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text("remember me"),
                              SizedBox(
                                width: 120,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Forget()));
                                  },
                                  child: Text("Forget Password")),
                            ],
                          ),
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ChoiseLocation()));
                              },
                              icon: Icon(Icons.arrow_circle_right),
                              label: Text("login")),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    // viwe 2
                    Container(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "enter name",
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "enter user name",
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: "enter user password",
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.app_registration_outlined),
                              label: Text("register")),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                  onChange: (index) => print(index),
                  tabBarProperties: TabBarProperties(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 8.0,
                    ),
                    indicator: ContainerTabIndicator(
                      radius: BorderRadius.circular(1.0),
                      color: Colors.blue,
                      borderWidth: 2.0,
                      borderColor: Colors.black,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[400],
                  ),
                ),
              ),
              Text("or login with "),
              Row(
                children: [
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    mini: true,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
