import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hpad = 26.0;

  const TextSection(this._title, this._body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(_hpad, 32, _hpad, 4),
              child:
                  Text(_title, style: Theme.of(context).textTheme.titleLarge)),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 10, _hpad, _hpad),
            child: Text(_body, style: Theme.of(context).textTheme.bodyText1),
          )
        ]);
  }
}
