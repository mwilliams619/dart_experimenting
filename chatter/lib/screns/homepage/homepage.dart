import 'dart:html';

import 'package:chatter/screns/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:chatter/app.dart';
import 'package:flutter/rendering.dart';
import 'package:chatter/screns/incrementer/incrementer.dart';

class Destination {
  const Destination(this.title, this.icon, this.screenbody);
  final String title;
  final IconData icon;
  final String screenbody;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', Icons.home, '/'),
  Destination('Chats', Icons.sms, '/dash'),
  Destination('Saved', Icons.star_outline_rounded, '/dash'),
];

class DestinationView extends StatefulWidget {
  final Destination destination;

  const DestinationView({Key? key, required this.destination})
      : super(key: key);

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return const Incrementer();
              case '/dash':
                return const DashboardScreen();

              default:
                return const Scaffold(
                  body: Text("SOS!!!!!"),
                );
            }
          },
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _selectedIndex,
          children: allDestinations.map<Widget>((Destination destination) {
            return DestinationView(destination: destination);
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
              icon: Icon(destination.icon), label: (destination.title));
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
