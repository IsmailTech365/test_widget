// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class BtnWidget extends StatefulWidget {
  const BtnWidget({Key? key}) : super(key: key);

  @override
  State<BtnWidget> createState() => _BtnWidgetState();
}

class _BtnWidgetState extends State<BtnWidget> {
  var f;
  var slectedpebart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Btn&check'), centerTitle: true),
      body: Container(
        width: double.infinity,
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
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 194, 199, 199),
                blurRadius: 2,
                spreadRadius: 2,
              )
            ]),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              //النوع الاول من الازرار وقد قامت شركة فلاتر بحذفه
              // ignore: deprecated_member_use
              // RaisedButton(
              //     onPressed: () {},
              //     child: Text('Ok To Btn', style: TextStyle(fontSize: 18)),
              //     color: Colors.teal[300],
              //     splashColor: Color.fromARGB(255, 189, 125, 144),
              //     colorBrightness: Brightness.dark,
              //     elevation: 10,
              //     highlightColor: Color.fromARGB(255, 99, 83, 37),
              //     highlightElevation: 50,
              //     visualDensity: VisualDensity.compact,
              //     padding: EdgeInsets.all(20),
              //     shape: Border.all(
              //         width: 1, color: Color.fromARGB(255, 255, 255, 255))),
              SizedBox(height: 10),
              //النوع الثاني من الازرار تمت اضافته بعد حذف هداك
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star),
                  label:
                      Text('Elevated_Btn_Icon', style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(250, 30),
                      shadowColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(width: 1, color: Colors.white)))),
              SizedBox(height: 10),
              // النوع الثالث من الازرار نفس الاعلى ولكن يقبل ايقونة
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated_Btn', style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 219, 74, 74))))),
              SizedBox(height: 10),
              // النوع الرابع من الازرار له ميزات وخصائص حديثة
              MaterialButton(
                  onPressed: () {},
                  child:
                      Text('Material_Button', style: TextStyle(fontSize: 18)),
                  color: Colors.amber,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(width: 1, color: Colors.red))),
              SizedBox(height: 10),
              TextButton(
                  onPressed: () {},
                  child: Text('Text_Btn',
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  style: TextButton.styleFrom(backgroundColor: Colors.green)),
              SizedBox(height: 10),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.place),
                  label: Text('TextBtn_Icon', style: TextStyle(fontSize: 18)),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.update_outlined),
                color: Colors.brown,
                iconSize: 50,
                splashColor: Colors.red,
              ),
              SizedBox(height: 10),
              ButtonBar(alignment: MainAxisAlignment.center, children: [
                Text('$f'),
                Text('$slectedpebart'),
                Text('$slectedpebart')
              ]),
              SizedBox(height: 10),

              //   هذا النوع من الازرار يقوم بعمل زر خاص على اي ويدجت موجود عندي مثل صور او اي شي اخر
              InkWell(
                  onTap: () {
                    setState(() {
                      f = 'صورة';
                    });
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://miro.medium.com/max/1400/0*ZQ9Xa7CINFVMA95w',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100))),
              SizedBox(height: 10),
              GestureDetector(
                  child: Text('$f', style: TextStyle(fontSize: 18)),
                  onTap: () {
                    // setState(() {
                    //   f = 'hhhh';
                    // });
                    print('ontap');
                  },
                  onLongPress: () {
                    // setState(() {
                    //   f = 'lll';
                    // });
                  }),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightGreen,
                ),
                child: DropdownButton(
                    isExpanded: true,
                    menuMaxHeight: 150,
                    borderRadius: BorderRadius.circular(25),
                    elevation: 10,
                    dropdownColor: Colors.grey,
                    isDense: true,
                    onTap: () {
                      setState(() {});
                    },
                    icon: Icon(Icons.list, size: 30, color: Colors.yellow),
                    hint: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        child: Text('اختر القسم المناسب',
                            textAlign: TextAlign.center)),
                    items: ['info', 'MEAL', 'HR', 'ismail', 'cc', 'PRO', 'PSS']
                        .map((e) => DropdownMenuItem(
                            child: Text(' Departement : $e '),
                            value: e,
                            // f بحال ضغطت على أي قائمة بيكتبلي ياها ضمن متغير الـ
                            onTap: () {
                              f = e;
                            },
                            alignment: AlignmentDirectional.center))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        slectedpebart = val;
                      });
                    },
                    value: slectedpebart),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

