import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../app.dart';

class Locations extends StatelessWidget {
  final locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Location List'),
        ),
        body: ListView(
          children: locations
              .map((location) => GestureDetector(
                    child: Text(location.name),
                    onTap: () => onLocationTap(context, location.id),
                  ))
              .toList(),
        ));
  }

  onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, locationDetailRoute,
        arguments: {'id': locationId});
  }
}
