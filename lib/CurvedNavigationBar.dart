// ignore_for_file: non_constant_identifier_names, curly_braces_in_flow_control_structures, file_names

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String str = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Text(
            str,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.black),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        color: const Color.fromARGB(255, 47, 84, 218),
        height: 60,
        animationDuration: const Duration(milliseconds: 400),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const Icon(
            Icons.home,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          const Icon(
            Icons.phone,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          const Icon(
            Icons.add_a_photo,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          const Icon(
            Icons.add_comment,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ],

        onTap: (Index) {
          if (Index == 0) {
            setState(() {
              str = 'Home';
            });
          } else if (Index == 1)
            setState(() {
              str = 'Call Me';
            });
          else if (Index == 2)
            setState(() {
              str = 'Add Photo';
            });
          else if (Index == 3)
            setState(() {
              str = 'Add coment';
            });
        },
      ),
    );
  }
}
