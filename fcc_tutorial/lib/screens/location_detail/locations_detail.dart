import 'dart:html';

import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Column(children: [
          Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 62, 0, 73)),
              child: const Text('')),
          Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 1, 58, 2)),
              child: const Text('')),
          Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 139, 105, 0)),
              child: const Text(''))
        ]));
  }
}
