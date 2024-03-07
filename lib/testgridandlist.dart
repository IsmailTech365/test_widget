// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';

class Gradviewtest extends StatefulWidget {
  const Gradviewtest({Key? key}) : super(key: key);

  @override
  State<Gradviewtest> createState() => _GradviewtestState();
}

class _GradviewtestState extends State<Gradviewtest> {
  GlobalKey<ScaffoldState> mykey = new GlobalKey<ScaffoldState>();
  late int l = 10;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold( 
          key: mykey,
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(),
                    accountName: Text('IsmailAlsmail'),
                    accountEmail: Text('Ismailalsmail96@gmail.com')),
                ListTile(
                  minLeadingWidth: 30,
                  horizontalTitleGap: 10,
                  iconColor: Colors.blue,
                  trailing: Icon(Icons.one_k),
                  isThreeLine: true,
                  subtitle: Text('Page Main'),
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
              ],
            ),
          ),
          // Container(
          //     padding: EdgeInsets.symmetric(vertical: 10),
          //     width: 100,
          //     margin: EdgeInsets.only(top: 75, bottom: 10, left: 20),
          //     decoration: BoxDecoration(
          //         border: Border.all(width: 1, color: Colors.white),
          //         borderRadius: BorderRadius.circular(40),
          //         gradient: LinearGradient(
          //             begin: Alignment.topCenter,
          //             end: Alignment.bottomCenter,
          //             tileMode: TileMode.mirror,
          //             colors: [
          //               Colors.blue,
          //               Colors.green,
          //             ])),
          //     child: ListView.builder(
          //         itemCount: 9,
          //         itemBuilder: (context, i) {
          //           return Column(
          //             children: [
          //               Container(
          //                 margin: EdgeInsets.symmetric(vertical: 7),
          //                 width: 75,
          //                 padding: EdgeInsets.all(5),
          //                 decoration: BoxDecoration(
          //                     border: Border.all(color: Colors.white),
          //                     borderRadius: BorderRadius.circular(10),
          //                     gradient: LinearGradient(
          //                         begin: Alignment.topCenter,
          //                         end: Alignment.bottomCenter,
          //                         tileMode: TileMode.mirror,
          //                         colors: [
          //                           Colors.blue,
          //                           Colors.green,
          //                         ])),
          //                 child: Column(
          //                   children: [
          //                     Icon(Icons.home),
          //                     Text('data'),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           );
          //         })),
          // Drawer(
          //     child: Column(children: [
          //   Container(height: 200, color: Colors.blue[600]),
          //   Text('data'),
          //   TextField()
          // ])),
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
          body: TabBarView(
            children: [
              ListView(
                  children: List.generate(
                      l,
                      (index) => Container(
                          color: Colors.amber,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text('dataaeghwk❤️🤍/k.,jdzsf'),
                                SizedBox(height: 5),
                                Icon(Icons.forest_outlined),
                                SizedBox(height: 5)
                              ])))),
              Container(
                  child: Center(
                      child: ElevatedButton(
                          onPressed: () {
                            mykey.currentState!.openDrawer();
                          },
                          child: Text('data')))),
            ],
          )),
    );
  }
}
