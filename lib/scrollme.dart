import 'package:flutter/material.dart';

class Scrollme extends StatefulWidget {
  const Scrollme({Key? key}) : super(key: key);

  @override
  State<Scrollme> createState() => _ScrollmeState();
}

class _ScrollmeState extends State<Scrollme> {
  late ScrollController sc;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    sc = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll'),
        centerTitle: true,
      ),
      body: ListView(controller: sc, children: [
        ElevatedButton.icon(
            onPressed: () {
              //   sc.jumpTo(sc.position.maxScrollExtent);
              sc.animateTo(sc.position.maxScrollExtent,
                  duration: const Duration(seconds: 2), curve: Curves.ease);
            },
            icon: const Icon(Icons.border_bottom),
            label: const Text('To Bottom')),
        ...List.generate(
            20,
            (index) => Container(
                  decoration: BoxDecoration(
                      color: index.isEven ? Colors.red : Colors.green,
                      // gradient: LinearGradient(
                      //     begin: Alignment.topCenter,
                      //     end: Alignment.bottomCenter,
                      //     colors: [
                      //       Color.fromARGB(255, 202, 201, 197),
                      //       Color.fromARGB(255, 100, 91, 91)
                      //     ]),
                      border: Border.all(width: 1)),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 5, right: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.home),
                      const SizedBox(height: 10),
                      index == 6
                          ? TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: const BorderSide())),
                              onPressed: () {
                                Navigator.pushNamed(context, 'two');
                              },
                              child: const Text(
                                'data',
                                style: TextStyle(color: Colors.amber),
                              ))
                          : const SizedBox(),
                      index == 5
                          ? TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: const BorderSide())),
                              onPressed: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.blue,
                                    elevation: 2,
                                    constraints: const BoxConstraints(
                                      minWidth: double.infinity,
                                      minHeight: double.infinity,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    context: context,
                                    builder: (v) {
                                      return const Column(
                                        children: [Text('اي لقيتك')],
                                      );
                                    });
                              },
                              child: const Text(
                                'data',
                                style: TextStyle(color: Colors.amber),
                              ))
                          : const SizedBox(),
                      const Text('Home',
                          style:
                              TextStyle(fontSize: 20, color: Colors.black54)),
                      Text('Here is Text and icon: ${index + 1}')
                    ],
                  ),
                )),
        ElevatedButton.icon(
            onPressed: () {
              //   sc.jumpTo(sc.position.minScrollExtent);
              // sc.position.moveTo(100,
              //     duration: Duration(seconds: 2), curve: Curves.easeIn);
              sc.animateTo(sc.position.minScrollExtent,
                  duration: const Duration(seconds: 2), curve: Curves.ease);
            },
            icon: const Icon(Icons.pages),
            label: const Text('To Bottom')),
      ]),
    );
  }
}
