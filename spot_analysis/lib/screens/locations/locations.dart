import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Locations'),
        ),
        body: ListView(
          children: locations
              .map((location) => GestureDetector(
                    child: Text(location.name),
                    onTap: () => _onLocationTap(context, location.id),
                  ))
              .toList(),
        ));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }
  // ...
}
