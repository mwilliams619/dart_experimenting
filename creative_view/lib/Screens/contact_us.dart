import 'package:flutter/material.dart';
import 'package:wordpair_gen/Screens/audio.dart';
import 'package:wordpair_gen/Screens/visuals.dart';
import 'package:wordpair_gen/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact Us'),
          actions: <Widget>[
            PopupMenuButton<String>(
                onSelected: choiceAction,
                itemBuilder: (BuildContext context) {
                  return Constants.choices.map((String choice) {
                    return PopupMenuItem(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                }),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Creative View',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Audio'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Audio()));
                },
              ),
              ListTile(
                title: const Text('Visual'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Visuals()));
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: const [
            Text('Email: jfdkls;jfkldsa'),
            Text('Phone: fhdjskalhfdsa'),
            Text('adress:gfndjka;djgsa')
          ],
        ));
  }

  void choiceAction(String choice) {
    print('working sesame');
  }
}
