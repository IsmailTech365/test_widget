// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class Tabwidget extends StatefulWidget {
  const Tabwidget({Key? key}) : super(key: key);

  @override
  State<Tabwidget> createState() => _TabwidgetState();
}

@override
class _TabwidgetState extends State<Tabwidget> with TickerProviderStateMixin {
  late TabController mycontrollar;
  Color? colorf;
  @override
  void initState() {
    super.initState();
    mycontrollar = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        centerTitle: true,
        bottom: TabBar(
            controller: mycontrollar,
            labelColor: Colors.white,
            splashBorderRadius: BorderRadius.circular(25),
            indicator: BoxDecoration(
                color: colorf, borderRadius: BorderRadius.circular(25)),
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Tools', icon: Icon(Icons.settings)),
              Tab(text: 'Comment', icon: Icon(Icons.comment)),
            ]),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomSheet: TabBar(
          controller: mycontrollar,
          labelColor: Colors.blue,
          splashBorderRadius: BorderRadius.circular(25),
          indicator: BoxDecoration(
              color: colorf, borderRadius: BorderRadius.circular(25)),
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Tools', icon: Icon(Icons.settings)),
            Tab(text: 'Comment', icon: Icon(Icons.comment)),
          ]),

      body: TabBarView(controller: mycontrollar, children: [
        // Tab(text: 'Home', icon: Icon(Icons.home)),
        // Tab(text: 'Tools', icon: Icon(Icons.settings)),
        // Tab(text: 'Comment', icon: Icon(Icons.comment)),
        Container(color: Colors.amber),
        Container(color: Colors.red),
        Container(color: Colors.blue),
      ]),
    );
  }
}
