// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class ListViewWidgetmy extends StatefulWidget {
  const ListViewWidgetmy({Key? key}) : super(key: key);

  @override
  State<ListViewWidgetmy> createState() => _ListViewWidgetmyState();
}

class _ListViewWidgetmyState extends State<ListViewWidgetmy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Button'), centerTitle: true),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter, // بداية اول التدرج
              end: Alignment.bottomCenter, // نهاية التدرج
              // الالوان اللي رح يتدرج اللون عليها
              colors: [
                Color.fromARGB(255, 104, 163, 230).withOpacity(0.1),
                Color.fromARGB(255, 67, 86, 150).withOpacity(0.8)
              ],
              stops: const [0.2, 1], // هون خليتو يبلش تدريج من المنتصف للأسفل
            ),
            border: Border.all(width: 1, color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(25),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 194, 199, 199),
                  blurRadius: 2,
                  spreadRadius: 2)
            ]),
        child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            scrollDirection: Axis.vertical,
            reverse: false, // عكس ترتيب الويدجت من الاعلى الى الاسفل او بالعكس
            //     physics: RangeMaintainingScrollPhysics(),
            physics:
                BouncingScrollPhysics(), //  هاي كتتتتييييييير مهمة جدا جدا الها عدة طرق سكرول
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 178, 167, 199),
                      borderRadius: BorderRadius.circular(25)),
                  height: 160,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star,
                              size: 50,
                            ),
                            Divider(height: 20),
                            Text(' Icons.star'),
                            SizedBox(height: 15),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text('Choose'),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Divider(height: 10),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'one 1',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Divider(height: 10),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(25)),
                  height: 200,
                  width: double.infinity,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: ListView(children: [
                    ListTile(
                      trailing: Text('الاول'),
                      subtitle: Text('Ismail Alsmail'),
                      title: Text(
                        'Title 1',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    ListTile(
                      trailing: Text('الثاني'),
                      subtitle: Text('Ismail Alsmail'),
                      title: Text(
                        'Title 2',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    ListTile(
                      trailing: Text('الثالث'),
                      subtitle: Text('Ismail Alsmail'),
                      title: Text(
                        'Title 3',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    ListTile(
                      trailing: Text('الرابع'),
                      subtitle: Text('Ismail Alsmail'),
                      title: Text(
                        'Title 4',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    ListTile(
                      subtitle: Text('Ismail Alsmail'),
                      trailing: Text('الخامس'),
                      title: Text(
                        'Title 5',
                        style: TextStyle(fontSize: 24),
                      ),
                    )
                  ])),
              Divider(height: 10),
              ListView(shrinkWrap: true, children: [Text('data')]),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Two 2',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(25)),
              ),
              Divider(height: 10),
              Container(
                height: 100,
                alignment: Alignment.center,
                child: ListView.separated(
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text('data'),
                      );
                    },
                    separatorBuilder: (context, i) {
                      return Icon(Icons.line_axis);
                    },
                    itemCount: 3),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Divider(height: 10),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Four 4',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Divider(height: 10),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Five 5',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ]),
      ),
    );
  }
}
