// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class Gradviewmywidget extends StatefulWidget {
  const Gradviewmywidget({Key? key}) : super(key: key);

  @override
  State<Gradviewmywidget> createState() => _GradviewmywidgetState();
}

class _GradviewmywidgetState extends State<Gradviewmywidget> {
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
      body: GridView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(5),
          itemCount: l,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, i) {
            return Container(
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('dataaeghwk❤️🤍/k.,jdzsf'),
                    SizedBox(height: 5),
                    Icon(Icons.forest_outlined),
                    SizedBox(height: 5),
                    Text('${i + 1}'), // ابداااااااااعي انا 😍😍😘😘😘
                  ],
                ));
          }),
    );
  }
}
