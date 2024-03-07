// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CheWidget extends StatefulWidget {
  const CheWidget({Key? key}) : super(key: key);

  @override
  State<CheWidget> createState() => _CheWidgetState();
}

class _CheWidgetState extends State<CheWidget> {
  var f;
  var slectedpebart;
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  bool v4 = false;
  bool v5 = false;
  bool vl = false;
  bool vm = false;
  bool vt = false;
  bool vy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CheckBox'), centerTitle: true),
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
                  stops: const [
                    0.2,
                    1
                  ], // هون خليتو يبلش تدريج من المنتصف للأسفل
                ),
                border: Border.all(width: 1, color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 194, 199, 199),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                        color: Colors.lime,
                        child: Row(children: [
                          Text('Meal'),
                          Checkbox(
                              value: v1,
                              onChanged: (val) {
                                setState(() {
                                  v1 = val!;
                                });
                              })
                        ])),
                    Container(
                        color: Colors.lime,
                        child: Row(children: [
                          Text('info'),
                          Checkbox(
                              value: v2,
                              onChanged: (val) {
                                setState(() {
                                  v2 = val!;
                                });
                              })
                        ])),
                    Container(
                        color: Colors.lime,
                        child: Row(children: [
                          Text('HR'),
                          Checkbox(
                              value: v3,
                              onChanged: (val) {
                                setState(() {
                                  v3 = val!;
                                });
                              })
                        ])),
                    Container(
                        color: Colors.lime,
                        child: Row(children: [
                          Text('PSS'),
                          Checkbox(
                              side: BorderSide(color: Colors.brown[900]!),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              splashRadius: 10,
                              activeColor: Colors.amber,
                              checkColor: Colors.red,
                              value: v4,
                              onChanged: (val) {
                                setState(() {
                                  v4 = val!;
                                });
                              })
                        ])),
                    Container(
                        color: Colors.lime,
                        child: Row(children: [
                          Text('Ismail'),
                          Checkbox(
                              value: v5,
                              onChanged: (val) {
                                setState(() {
                                  v5 = val!;
                                });
                              })
                        ])),
                    SizedBox(height: 20),
                    CheckboxListTile(
                        value: vl,
                        onChanged: (vv) {
                          setState(() {
                            vl = vv!;
                          });
                        },
                        controlAffinity:
                            ListTileControlAffinity.leading, //طريقة العرض
                        title: Text('Eng : ismail Alsmail'),
                        subtitle: Text('مهندس برمجيات'),
                        secondary: Icon(Icons.computer),
                        isThreeLine: true, // لحتى يصيرو الكل على محاذاة واحدة
                        activeColor: Colors.red[900],
                        checkColor: Colors.amber,
                        selected:
                            vl // عند التحديد يتغير لون الشيك كلها للون الاحمر الذي انا احددته في الاكتف كالور
                        ),
                    CheckboxListTile(
                        value: vm,
                        onChanged: (vv) {
                          setState(() {
                            vm = vv!;
                          });
                        },
                        title: Text('Eng : Mostfa Alsmail'),
                        subtitle: Text('مهندس شبكات'),
                        secondary: Icon(Icons.computer),
                        isThreeLine: true, // لحتى يصيرو الكل على محاذاة واحدة
                        activeColor: Colors.red[900],
                        checkColor: Colors.amber,
                        selected:
                            vm // عند التحديد يتغير لون الشيك كلها للون الاحمر الذي انا احددته في الاكتفكالور
                        ),
                    CheckboxListTile(
                        value: vt,
                        onChanged: (vv) {
                          setState(() {
                            vt = vv!;
                          });
                        },
                        title: Text('Eng : tamim Ahmado'),
                        subtitle: Text('مهندس'),
                        secondary: Icon(Icons.computer),
                        isThreeLine: true, // لحتى يصيرو الكل على محاذاة واحدة
                        activeColor: Colors.red[900],
                        checkColor: Colors.amber,
                        selected:
                            vt // عند التحديد يتغير لون الشيك كلها للون الاحمر الذي انا احددته في الاكتفكالور
                        ),
                    CheckboxListTile(
                        value: vy,
                        onChanged: (vv) {
                          setState(() {
                            vy = vv!;
                          });
                        },
                        title: Text('Eng : Yaser Alsmail'),
                        subtitle: Text('مهندس برمجيات'),
                        secondary: Icon(Icons.computer),
                        isThreeLine: true, // لحتى يصيرو الكل على محاذاة واحدة
                        activeColor: Colors.red[900],
                        checkColor: Colors.amber,
                        selected:
                            vy // عند التحديد يتغير لون الشيك كلها للون الاحمر الذي انا احددته في الاكتفكالور
                        )
                  ],
                ))));
  }
}
