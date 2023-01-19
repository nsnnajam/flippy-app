// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_las

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/button_list.dart';

const List<Widget> fruits = <Widget>[
  Text('Home Address'),
  Text('Work?Office Address'),
];

class UserAddress extends StatefulWidget {
  const UserAddress({Key? key}) : super(key: key);

  @override
  State<UserAddress> createState() => _UserAddressState();
}

class _UserAddressState extends State<UserAddress> {
  final List<bool> _selectedFruits = <bool>[
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //for start the align
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 350,
              child: Card(
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.location_pin),
                    label: Text("Use my current location")),
              ),
            ),
            Text(
              "Tap to auto fill the address",
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 350,
              child: Card(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // icon: Icon(Icons.person),
                  // hintText: 'Enter Again Password',
                  labelText: 'Pin Code *',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // icon: Icon(Icons.person),
                  // hintText: 'Enter Again Password',
                  labelText: 'House No. Building Namess *',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // icon: Icon(Icons.person),
                  hintText: 'Enter here',
                  labelText: 'Road Name Area , Colony *',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // icon: Icon(Icons.person),
                  hintText: 'Enter here',
                  labelText: 'Landmark (Optional)',
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
                  hintText: 'Enter here',
                  labelText: 'Name',
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
                  hintText: '10-digit mobile number',
                  labelText: 'Mobile Number',
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
                  hintText: '10-digit mobile number',
                  labelText: 'Alternate Phone (Optional) ',
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
                  hintText: '10-digit mobile number',
                  labelText: 'Alternate Phone (Optional) ',
                ),
              ),
            ),
            Divider(
              height: 10,
            ),
            Align(alignment: Alignment.topLeft, child: Text("Address Type")),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.topLeft,
              child: ToggleButtons(
                direction: Axis.vertical,
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedFruits.length; i++) {
                      _selectedFruits[i] = i == index;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.red[700],
                selectedColor: Colors.white,
                fillColor: Colors.red[200],
                color: Colors.red[400],
                constraints: const BoxConstraints(
                  minHeight: 40.0,
                  minWidth: 80.0,
                ),
                isSelected: _selectedFruits,
                children: fruits,
              ),
            ),
            ElevatedButton.icon(
                style: ButtonStyle(),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => LoginSecreen()),
                  // );
                },
                icon: Icon(Icons.arrow_circle_right),
                label: Text("Submit "))
          ],
        ),
      ),
    );
  }
}
