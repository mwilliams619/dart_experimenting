import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

// ignore: constant_identifier_names
const LocationsRoute = '/';
// ignore: constant_identifier_names
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: _routes(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
                    fontFamily: fontNameDefault,
                    fontWeight: FontWeight.w300,
                    fontSize: mediumTextSize,
                    color: Colors.white)),
            textTheme: const TextTheme(
              headline4: TextStyle(
                  fontFamily: fontNameDefault,
                  fontWeight: FontWeight.w300,
                  fontSize: mediumTextSize,
                  color: Colors.black),
              bodyText1: TextStyle(
                  fontFamily: fontNameDefault,
                  fontWeight: FontWeight.w300,
                  fontSize: bodyTextSize,
                  color: Colors.black),
            )));
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = const Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
