import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  String _title;
  String _body;
  double _hpad = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
              child:
                  Text(_title, style: Theme.of(context).textTheme.headline5)),
          Container(
              padding: EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
              child: Text(_body, style: Theme.of(context).textTheme.bodyText1)),
        ]);
  }
}
