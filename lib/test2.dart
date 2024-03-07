// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables, unnecessary_new, deprecated_member_use, non_constant_identifier_names, null_check_always_fails, unused_local_variable

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  GlobalKey<ScaffoldState> mykey = new GlobalKey<ScaffoldState>();
  var stat;
  var statcity;
  late String str = 'Ismail Alsmail';
  var str2 = '200\$';
  bool ve = false;
  bool vr = false;
  bool vt = false;
  bool vi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: mykey,
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Searchdelegatm());
              },
              icon: Icon(Icons.search))
        ], title: Text(str), centerTitle: true),
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
                    ]), // هون خليتو يبلش تدريج من المنتصف للأسفل
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
                child: Column(children: [
                  ListTile(
                    title: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 87, 143, 208)
                                      .withOpacity(0.1),
                                  Color.fromARGB(255, 67, 86, 150)
                                      .withOpacity(0.8)
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          'Test Level 1',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                    subtitle: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text('list Tile Card')),
                    leading: CircleAvatar(
                        child: Icon(Icons.photo,
                            size: 30, color: Colors.blue[400]),
                        backgroundColor: Colors.white54,
                        radius: 30),
                    isThreeLine: true,
                    trailing: Container(
                        child: Text(
                      str2,
                      style: TextStyle(fontSize: 24, shadows: [
                        BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(2, 2))
                      ]),
                    )),
                  ),
                  Divider(
                      height: 5,
                      color: Colors.grey[900],
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.8),
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 156, 182, 236),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Male'),
                                      Radio(
                                          value: 'Male',
                                          groupValue: stat,
                                          onChanged: (val) {
                                            setState(() {
                                              stat = val!;
                                            });
                                          }),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('FeMale'),
                                      Radio(
                                          value: 'feMale',
                                          groupValue: stat,
                                          onChanged: (val) {
                                            setState(() {
                                              stat = val!;
                                            });
                                          }),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Other'),
                                      Radio(
                                          value: 'other',
                                          groupValue: stat,
                                          onChanged: (val) {
                                            setState(() {
                                              stat = val!;
                                            });
                                          }),
                                    ])
                              ]))),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 156, 182, 236),
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Idleb'),
                                        Radio(
                                            value: 'idleb',
                                            groupValue: statcity,
                                            onChanged: (val) {
                                              setState(() {
                                                statcity = val!;
                                              });
                                            }),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Aleppo'),
                                        Radio(
                                            value: 'aleppo',
                                            groupValue: statcity,
                                            onChanged: (val) {
                                              setState(() {
                                                statcity = val!;
                                              });
                                            }),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Other'),
                                        Radio(
                                            value: 'oth',
                                            groupValue: statcity,
                                            onChanged: (val) {
                                              setState(() {
                                                statcity = val!;
                                              });
                                            }),
                                      ])
                                ])))),
                  ]),
                  Divider(
                      height: 20,
                      color: Colors.grey[900],
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.8),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 87, 143, 208)
                                    .withOpacity(0.1),
                                Color.fromARGB(255, 67, 86, 150)
                                    .withOpacity(0.8)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.centerLeft),
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'Test Level 1',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 87, 143, 208)
                                            .withOpacity(0.1),
                                        Color.fromARGB(255, 146, 152, 172)
                                            .withOpacity(0.8)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerLeft),
                                  color: Colors.blue[400],
                                  borderRadius: BorderRadius.circular(25)),
                              width: 150,
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('English'),
                                      SizedBox(width: 20),
                                      Switch(
                                          value: ve,
                                          onChanged: (vall) {
                                            setState(() {
                                              ve = vall;
                                            });
                                          }),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Arabic'),
                                      SizedBox(width: 20),
                                      Switch(
                                          value: vr,
                                          onChanged: (vall) {
                                            setState(() {
                                              vr = vall;
                                            });
                                          }),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Turkry'),
                                      SizedBox(width: 20),
                                      Switch(
                                          value: vt,
                                          onChanged: (vall) {
                                            setState(() {
                                              vt = vall;
                                            });
                                          }),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Italy'),
                                      SizedBox(width: 20),
                                      Switch(
                                          value: vi,
                                          onChanged: (vall) {
                                            setState(() {
                                              vi = vall;
                                            });
                                          }),
                                    ])
                              ])),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 87, 143, 208)
                                          .withOpacity(0.1),
                                      Color.fromARGB(255, 146, 152, 172)
                                          .withOpacity(0.8)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.centerLeft),
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(25)),
                            width: 150,
                            height: 250,
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10,
                                        fixedSize: Size.fromWidth(180),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                    onPressed: () {
                                      setState(() {
                                        str2 = '500\$';
                                      });
                                      var snac = SnackBar(
                                        behavior: SnackBarBehavior.floating,
                                        margin: EdgeInsets.only(
                                            bottom: 50, left: 20, right: 20),
                                        duration: Duration(seconds: 2),
                                        backgroundColor: Colors.white,
                                        action: SnackBarAction(
                                          label: ': ملاحظة',
                                          onPressed: () {
                                            setState(() {
                                              str =
                                                  'تم تغيير اسم الابلكيشن بنجاح';
                                              ve = true;
                                              vi = true;
                                              statcity = 'idleb';
                                            });
                                          },
                                        ),
                                        content: Text(
                                          'تمت العملية بنجاح والرفع على السيرفر',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blue[800],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                      //     mykey.currentState?.showSnackBar(snac);
                                    },
                                    child: Text('Snackbar Show')),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10,
                                        fixedSize: Size.fromWidth(180),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                    onPressed: () {
                                      setState(() {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                actionsOverflowAlignment:
                                                    OverflowBarAlignment.end,
                                                actions: [
                                                  // Center(
                                                  //     child: MaterialButton(
                                                  //         shape: RoundedRectangleBorder(
                                                  //             borderRadius:
                                                  //                 BorderRadius
                                                  //                     .circular(
                                                  //                         25),
                                                  //             side: BorderSide(
                                                  //                 width: 1,
                                                  //                 color: Colors
                                                  //                     .red)),
                                                  //         color: Colors
                                                  //             .blueGrey[300],
                                                  //         child: Text('Ok'),
                                                  //         onPressed: () {})),
                                                  // FlatButton(
                                                  //     onPressed: () {
                                                  //       showDialog(
                                                  //           context: context,
                                                  //           builder: (context) {
                                                  //             return AlertDialog(
                                                  //               title: Text(
                                                  //                   'data'),
                                                  //             );
                                                  //           });
                                                  //     },
                                                  //     child: Text('Cancel')),
                                                  // FlatButton(
                                                  //     onPressed: () {
                                                  //       setState(() {
                                                  //         vt = true;
                                                  //       });
                                                  //     },
                                                  //     child: Text('Ok')),
                                                ],
                                                backgroundColor: Colors.grey,
                                                scrollable: true,
                                                alignment: Alignment.center,
                                                semanticLabel: 'hhhhh',
                                                insetPadding:
                                                    EdgeInsets.all(10),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                title: Row(children: [
                                                  Icon(Icons.archive),
                                                  SizedBox(width: 10),
                                                  Text('Title :',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blue[900],
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold))
                                                ]),
                                                content: Text(
                                                    'تمت العملية بنجاح والرفع على السيرفر'),
                                              );
                                            });
                                      });
                                    },
                                    child: Text('Alret Dialoge Show')),
                                ElevatedButton(
                                    onPressed: showToast,
                                    child: Text('Ok Toast')),
                                ElevatedButton(
                                    onPressed: () {
                                      // Navigator.of(context).pop(
                                      //     MaterialPageRoute(builder: (context) {
                                      //   return TextFormFieldWidgetme();
                                      // }));

                                      // Navigator.of(context).pop();

                                      if (Navigator.of(context).canPop()) {
                                        Navigator.of(context).pop();
                                      }
                                    },
                                    child: Text('Previous'))
                              ],
                            ),
                          ),
                        )
                      ]))
                ]))));
  }
}

void showToast() => Fluttertoast.showToast(
    msg: 'msg',
    backgroundColor: Colors.yellow,
    fontSize: 24,
    textColor: Colors.red,
    toastLength: Toast.LENGTH_SHORT);

class Searchdelegatm extends SearchDelegate {
  List m = [
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
    'Ismail',
    'Mohammed',
    'Yaser',
    'Omar',
    'Ali',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return AlertDialog(
      actionsOverflowAlignment: OverflowBarAlignment.end,
      actions: [
        // FlatButton(
        //     onPressed: () {
        //       query = '';
        //     },
        //     child: Text('Cancel')),
        // FlatButton(onPressed: () {}, child: Text('Ok')),
      ],
      backgroundColor: Colors.grey,
      scrollable: true,
      alignment: Alignment.center,
      semanticLabel: 'hhhhh',
      insetPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      title: Row(children: [
        Icon(Icons.archive),
        SizedBox(width: 10),
        Text('Title :',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blue[900],
                fontSize: 20,
                fontWeight: FontWeight.bold))
      ]),
      content: Text('تمت العملية بنجاح والرفع على السيرفر'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // هاد لحتى ابحث على الكلمة اللي بتحتوي على الحرف اللي انا رح اكتبو جوا الكويري
    List filternames = m.where((element) => element.contains(query)).toList();
    // هاد لحتى ابحث على الكلمة اللي بتبدا بلحرف اللي انا رح اكتبو جوا الكويري
    //  List filternames2 = m.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
        itemCount: query == '' ? m.length : filternames.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              // هاي لحتى يكمل الكلمة جوا البحث
              query = query == '' ? m[i] : filternames[i];
              //هاي لحتى+
              showResults(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text('${query == '' ? m[i] : filternames[i]}',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                      )),
                  SizedBox(height: 5),
                  Divider(
                      color: Colors.black26,
                      indent: 10,
                      endIndent: 10,
                      height: 10,
                      thickness: 1),
                ],
              ),
            ),
          );
        });
  }
}
