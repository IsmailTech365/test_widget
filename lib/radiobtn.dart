// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({Key? key}) : super(key: key);

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  var selectedcountry;
  var car;
  var listval;
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
                    Text('Country City'),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text('USA'),
                        Radio(
                            value: 'usa',
                            groupValue: selectedcountry,
                            onChanged: (val) {
                              setState(() {
                                selectedcountry = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Eygept'),
                        Radio(
                            value: 'egpt',
                            groupValue: selectedcountry,
                            onChanged: (val) {
                              setState(() {
                                selectedcountry = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text('TRY'),
                        Radio(
                            value: 'try',
                            groupValue: selectedcountry,
                            onChanged: (val) {
                              setState(() {
                                selectedcountry = val!;
                              });
                            })
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 2,
                        color: Colors.amber,
                        height: 30),
                    Text('Countrty Car'),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text('santafe'),
                        Radio(
                            value: 'san',
                            groupValue: car,
                            onChanged: (val) {
                              setState(() {
                                car = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text('ODE'),
                        Radio(
                            value: 'wody',
                            groupValue: car,
                            onChanged: (val) {
                              setState(() {
                                car = val!;
                              });
                            })
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Hamar'),
                        Radio(
                            value: 'ham',
                            groupValue: car,
                            onChanged: (val) {
                              setState(() {
                                car = val!;
                              });
                            })
                      ],
                    ),
                    Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 2,
                        color: Colors.amber,
                        height: 30),
                    RadioListTile(
                        title: Text('MEAL'),
                        secondary: Icon(Icons.flight_class),
                        subtitle: Text('مراقبة وتقييم'),
                        selected: listval == 'meal'
                            ? true
                            : false, // لحتى اغير لون النص ايضاً
                        activeColor: Colors.red[800],
                        value: 'meal',
                        groupValue: listval,
                        onChanged: (val) {
                          setState(() {
                            listval = val!;
                          });
                        }),
                    RadioListTile(
                        title: Text('INFO'),
                        activeColor: Colors.amber,
                        secondary: Icon(Icons.book),
                        subtitle: Text('معلومات'),
                        selected: listval == 'info'
                            ? true
                            : false, // لحتى اغير لون النص ايضاً
                        value: 'info',
                        groupValue: listval,
                        onChanged: (val) {
                          setState(() {
                            listval = val!;
                          });
                        }),
                    RadioListTile(
                        tileColor: Colors.white,
                        activeColor: Colors.teal[800],
                        selected: listval == 'hr'
                            ? true
                            : false, // لحتى اغير لون النص ايضاً
                        selectedTileColor: Color.fromARGB(255, 237, 18, 182),
                        // shape: RoundedRectangleBorder(
                        //     side: BorderSide(color: Colors.red, width: 5),
                        //     borderRadius: BorderRadius.circular(25)),
                        title: Text('HR'),
                        secondary: Icon(Icons.emoji_people),
                        subtitle: Text(' موارد بشرية'),
                        value: 'hr',
                        groupValue: listval,
                        onChanged: (val) {
                          setState(() {
                            listval = val!;
                          });
                        })
                  ],
                ))));
  }
}
