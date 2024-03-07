// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

@override
class _BottombarState extends State<Bottombar> with TickerProviderStateMixin {
  late TabController mycontrollar;
  late TabController my2;
  late PageController pc;
  int s = 2;
  List<Widget> p = [Text('1'), Text('2'), Text('3')];
  Color? colorf;
  @override
  void initState() {
    super.initState();
    pc = new PageController(initialPage: 1, viewportFraction: 0.5);
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
              color: colorf,
              borderRadius: BorderRadius.circular(25),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Tools', icon: Icon(Icons.settings)),
              Tab(text: 'Comment', icon: Icon(Icons.comment)),
            ]),
      ),
      // // ignore: prefer_const_literals_to_create_immutables
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
        Container(
            child: PageView(
                controller: pc,
                children: [Text('data1'), Text('data2'), Text('data3')]),
            color: Colors.amber),
        Container(color: Colors.red),
        Container(color: Colors.blue),
      ]),
      // ),
      drawer: Drawer(),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: s,
          unselectedItemColor: Colors.amber,
          selectedItemColor: Colors.blue,
          onTap: (i) {
            setState(() {
              s = i;
            });
          },
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(label: '1', icon: Icon(Icons.abc)),
            BottomNavigationBarItem(label: '2', icon: Icon(Icons.ac_unit)),
            BottomNavigationBarItem(label: '3', icon: Icon(Icons.ac_unit_sharp))
          ]),
    );
  }
}
