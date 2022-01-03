import 'package:flutter/material.dart';
import 'package:wordpair_gen/Screens/contact_us.dart';
import 'package:wordpair_gen/constants.dart';
import 'visuals.dart';

class Audio extends StatefulWidget {
  const Audio({Key? key}) : super(key: key);

  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio'),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ContactUs()));
              },
            ),
            ListTile(
              title: const Text('Audio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
                title: const Text('Visual'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Visuals()));
                })
          ],
        ),
      ),
      body: Column(children: const [Text('Where my songs will go')]),
    );
  }

  void choiceAction(String choice) {
    print('working sesame');
  }
}
