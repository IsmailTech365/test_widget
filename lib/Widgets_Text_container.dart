// ignore_for_file: file_names, prefer_const_constructors, unused_import
//import 'package:slide_to_act/slide_to_act.dart';
import 'package:flutter/material.dart';

class TextWidgetsw extends StatefulWidget {
  const TextWidgetsw({Key? key}) : super(key: key);

  @override
  State<TextWidgetsw> createState() => _TextWidgetswState();
}

class _TextWidgetswState extends State<TextWidgetsw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      endDrawer: Drawer(),
      drawerScrimColor: Colors.amber,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          //شرح للايقونات
          Icon(
            Icons.abc_sharp,
            size: 80,
            color: Colors.amber,
            // ignore: prefer_const_literals_to_create_immutables
            shadows: [
              Shadow(color: Colors.black, blurRadius: 10, offset: Offset(5, 5))
            ],
          ),
          //شرح الديفايدر
          Divider(
            color: Colors.black,
            height: 50,
            thickness: 2,
            endIndent: 50,
            indent: 20,
          ),
          // شرح للكارد والكونتينر  والنص
          Center(
            child: Card(
              elevation: 5,
              surfaceTintColor: Colors.amber,
              clipBehavior: Clip.none,
              child: Container(
                width: 300,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10, //ظهور الظلال
                      offset: Offset(5, 5), //مكان اسقاط الظلال
                      spreadRadius: 2, //تمدد الظلال
                      //    blurStyle: BlurStyle.solid, // ستايل الظلال
                    )
                  ],
                  color: Colors.amber,

                  // shape: BoxShape
                  //     .circle, //هون اخترت شكل الكونتينار اما دائرة او مستطيل او شي تاني
                  //  backgroundBlendMode: BlendMode.srcOver,
                  border: Border.all(
                      color: Colors.red, width: 3, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(
                    //هون استعلمت البوردرريديوس منشان اعمل حواف للكونتينار
                    Radius.circular(25),
                  ),
                ),
                child: Text(
                  ' Ismail Alsmail  ',
                  style: TextStyle(
                    letterSpacing: 5.0,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Colors.blue,
                    //وضع خط على الكلمة او ضمنها اذا غيرت الاندر لاين
                    decoration: TextDecoration.underline,
                  ),
                  //حتى اعمل wrap للـ النص
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //شرح السلايد اكشن
          // SlideAction(
          //   onSubmit: () {},
          //   outerColor: Colors.amber,
          //   sliderButtonIconPadding: 18,
          //   borderRadius: 40,
          //   innerColor: Color.fromARGB(255, 147, 83, 83),
          //   text: 'ismail',
          // ),
          SizedBox(height: 10),
          //شرح الاندكس ستاك
          IndexedStack(
            index: 0, // الاندكس الذي سيظهر على الشاشة
            children: [
              Container(
                width: 300,
                height: 300,
                //alignment: Alignment.center,
                color: Colors.blue,
              ),
              Container(
                width: 300,
                height: 300,
                // alignment: Alignment.center,
                color: Colors.amber,
              ),
              Container(
                width: 300,
                height: 300,
                // alignment: Alignment.center,
                color: Colors.red,
              ),
              Container(
                width: 300,
                height: 300,
                // alignment: Alignment.center,
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
