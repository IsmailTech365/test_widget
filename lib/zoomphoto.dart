// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Gradviewtest extends StatefulWidget {
  const Gradviewtest({Key? key}) : super(key: key);

  @override
  State<Gradviewtest> createState() => _GradviewtestState();
}

class _GradviewtestState extends State<Gradviewtest> {
  late int l = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(children: [
        Container(height: 200, color: Colors.blue[600]),
        Text('data'),
        TextField()
      ])),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'GridView Widget',
            style: TextStyle(fontSize: 24, color: Colors.white),
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            if (l == 1) {
              l = 5;
            } else {
              l--;
            }
          });
        },
      ),
      body: Container(
          child: PhotoView(
        imageProvider: AssetImage('assets/po.png'),
      )),

    );
  }
}
