// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:test_widgets/CurvedNavigationBar.dart';
import 'package:test_widgets/Widgets_Text_container.dart';
import 'package:test_widgets/bottombar.dart';
import 'package:test_widgets/buttomsandcheckbox.dart';
import 'package:test_widgets/checkwidgets.dart';
import 'package:test_widgets/exampel1.dart';
import 'package:test_widgets/gradviewwidget.dart';
import 'package:test_widgets/listlayout.dart';
import 'package:test_widgets/radiobtn.dart';
import 'package:test_widgets/scrollme.dart';
import 'package:test_widgets/showmodelbottomsheet.dart';
import 'package:test_widgets/tab.dart';
import 'package:test_widgets/test2.dart';
import 'package:test_widgets/testgridandlist.dart';
import 'package:test_widgets/textfield.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Screen'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Bottombar(),
                ));
              },
              child: const Text('bottombar'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BtnWidget(),
                ));
              },
              child: const Text('BtnWidget'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CheWidget(),
                ));
              },
              child: const Text('CheWidget'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Exampelone(),
                ));
              },
              child: const Text('Exampelone'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Gradviewmywidget(),
                ));
              },
              child: const Text('Gradviewmywidget'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ListViewWidgetmy(),
                ));
              },
              child: const Text('ListViewWidgetmy'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RadioWidget(),
                ));
              },
              child: const Text('RadioWidget'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Scrollme(),
                ));
              },
              child: const Text('Scrollme'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Showmodelbottomsheetme(),
                ));
              },
              child: const Text('Showmodelbottomsheetme'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Tabwidget(),
                ));
              },
              child: const Text('Tabwidget'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TestWidget(),
                ));
              },
              child: const Text('TestWidget'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TextFormFieldWidgetme(),
                ));
              },
              child: const Text('TextFormFieldWidgetme'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TextWidgetsw(),
                ));
              },
              child: const Text('TextWidgetsw'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Gradviewtest(),
                ));
              },
              child: const Text('Gradviewtest'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Homescreen(),
                ));
              },
              child: const Text('CurvedNavigationBar'),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
