// ignore_for_file: prefer_const_constructors, unnecessary_new, dead_code, deprecated_member_use, unnecessary_string_interpolations, unused_local_variable

import 'package:flutter/material.dart';

class TextFormFieldWidgetme extends StatefulWidget {
  const TextFormFieldWidgetme({Key? key}) : super(key: key);

  @override
  State<TextFormFieldWidgetme> createState() => _TextFormFieldWidgetmeState();
}

class _TextFormFieldWidgetmeState extends State<TextFormFieldWidgetme>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> mm = new GlobalKey<ScaffoldState>();
  GlobalKey<FormState> fm = new GlobalKey<FormState>();
  late TabController tm;
  late bool ob = true;
  late double db = 1.0;
  IconData? c = Icons.remove_red_eye;
  TextEditingController txtename = new TextEditingController();
  TextEditingController txteemail = new TextEditingController();
  TextEditingController txtepass = new TextEditingController();
  late String s;
  @override
  void initState() {
    super.initState();
    tm = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mm,
      appBar: AppBar(
        title: Text('Text Field Form'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      // ignore: prefer_const_literals_to_create_immutables
      bottomSheet: TabBar(
          splashBorderRadius: BorderRadius.circular(25),
          indicatorColor: Colors.black,
          labelColor: Colors.blue,
          controller: tm,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Tab(text: '1', icon: Icon(Icons.abc_outlined)),
            Tab(text: '2', icon: Icon(Icons.safety_check)),
            Tab(text: '3', icon: Icon(Icons.abc_outlined))
          ]),
      body: Form(
        key: fm,
        child: TabBarView(controller: tm, children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 30),
                TextFormField(
                  onChanged: (str) {
                    setState(() {
                      s = str;
                    });
                  },
                  controller: txtename,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(

                      // enabled: false,
                      // filled: true,
                      // fillColor: Colors.redAccent,
                      // enabledBorder: UnderlineInputBorder(
                      // borderSide: BorderSide(color: Colors.amber)),
                      labelText: 'Name: ',
                      labelStyle:
                          TextStyle(color: Colors.amber[800], fontSize: 20),
                      // prefixText: 'Name: ',
                      hintText: 'Enter Your Name here !',
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 53, 133, 35)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20)),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      )),
                ),
                SizedBox(height: 25),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: (txt) {
                    // if (!txt!.contains('@')) {
                    //   return 'ادخل ايميل صحيح';
                    // }
                    if (!txt!.endsWith('m')) {
                      return 'hphgv';
                    }
                    return null;
                  },
                  onChanged: (str) {
                    setState(() {
                      s = str;
                    });
                  },
                  controller: txteemail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(

                      // enabled: false,
                      // filled: true,
                      // fillColor: Colors.redAccent,
                      // enabledBorder: UnderlineInputBorder(
                      // borderSide: BorderSide(color: Colors.amber)),
                      labelText: 'Email: ',
                      labelStyle:
                          TextStyle(color: Colors.amber[800], fontSize: 20),
                      // prefixText: 'Name: ',
                      hintText: 'Enter Your Email here !',
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 53, 133, 35)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20)),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      )),
                ),
                SizedBox(height: 25),
                TextFormField(
                  maxLength: 99,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (txt) {
                    if (txt!.contains('k')) {
                      return 'kيعني ليش حطيت حرف الـ K';
                    }

                    return null;
                  },
                  onChanged: (str) {
                    setState(() {
                      s = str;
                    });
                  },
                  controller: txtepass,
                  obscureText: ob,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(

                      // enabled: false,
                      // filled: true,
                      // fillColor: Colors.redAccent,
                      // enabledBorder: UnderlineInputBorder(
                      // borderSide: BorderSide(color: Colors.amber)),
                      labelText: 'Password: ',
                      labelStyle:
                          TextStyle(color: Colors.amber[800], fontSize: 20),
                      // prefixText: 'Name: ',
                      hintText: 'Enter Your Password here !',
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (ob == true) {
                              ob = false;
                              c = Icons.remove_done_sharp;
                            } else {
                              ob = true;
                              c = Icons.remove_red_eye_sharp;
                            }
                          });
                        },
                        icon: Icon(c),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 53, 133, 35)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20)),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      )),
                ),
                Slider(
                    thumbColor: Colors.amber,
                    inactiveColor: Colors.black45,
                    activeColor: Colors.red,
                    min: 0,
                    max: 100,
                    //  value: db,
                    value: txtepass.text.length.toDouble(),
                    onChanged: (val) {
                      setState(() {
                        db = val;
                      });
                    }),
                SizedBox(height: 20),
                SizedBox(height: 20),
                Text('${txtename.text}'),
                SizedBox(height: 20),
                Text('${txteemail.text}'),
                SizedBox(height: 20),
                Text('${txtepass.text}'),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      var snac = SnackBar(
                        behavior: SnackBarBehavior.floating,
                        margin:
                            EdgeInsets.only(bottom: 50, left: 20, right: 20),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.white,
                        action: SnackBarAction(
                          label: ': ملاحظة',
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${txtename.text}',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${txteemail.text}',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${txtepass.text}',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                      //    mm.currentState?.showSnackBar(snac);
                    },
                    child: Text('Print Text')),
              ],
            ),
          ),
          Container(
              color: Colors.red,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return TestWidget();
                        // }));
                        Navigator.of(context).pushNamed('two');
                      },
                      child: Icon(Icons.one_k))
                ],
              )),
          Container(
            color: Colors.blue,
          ),
        ]),
      ),
    );
  }
}
