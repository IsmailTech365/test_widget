// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class Exampelone extends StatelessWidget {
  const Exampelone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Exampel one'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'The Exampel First',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  wordSpacing: 1.2,
                ),
              ),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(255, 76, 131, 194),
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(width: 2, color: Colors.black87)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'To use this class, make sure you set uses-material-design: true in your projects pubspec.yaml file in the flutter section. This ensures that the MaterialIcons font is included in your application. This font is used to display the icons. For example',
                style: TextStyle(fontSize: 18, height: 2),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(width: 2, color: Colors.black)),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Spacer(flex: 1),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Spacer(flex: 2),
                      Text(
                        '17 Reviwe',
                        style: TextStyle(fontSize: 24),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                  Divider(height: 20),
                  Row(
                    children: [
                      Spacer(flex: 1),
                      Column(
                        children: [
                          Icon(
                            Icons.airport_shuttle,
                            size: 50,
                            color: Colors.green[800],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('airport shuttle'),
                          ),
                          Text('2-4'),
                        ],
                      ),
                      Spacer(flex: 2),
                      Column(
                        children: [
                          Icon(
                            Icons.all_inclusive,
                            size: 50,
                            color: Colors.green[800],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('all inclusive'),
                          ),
                          Text('2-8'),
                        ],
                      ),
                      Spacer(flex: 2),
                      Column(
                        children: [
                          Icon(
                            Icons.airplanemode_on,
                            size: 50,
                            color: Colors.green[800],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('airplanemode on'),
                          ),
                          Text('2-6'),
                        ],
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
