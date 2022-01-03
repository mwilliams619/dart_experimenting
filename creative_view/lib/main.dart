import 'package:flutter/material.dart';
import 'package:wordpair_gen/Screens/contact_us.dart';
import 'package:wordpair_gen/Screens/visuals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(), // Provide dark theme.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Visuals(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const ContactUs(),
      },
    );
  }
}
