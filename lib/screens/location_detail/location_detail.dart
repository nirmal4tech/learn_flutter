import 'package:flutter/material.dart';
import 'text_section.dart';
import '../widgets/image_banner.dart';
import '../../models/location.dart';
import '../widgets/location_tile.dart';

class LocationDetail extends StatelessWidget {
  int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    var location = Location.fetchById(_locationId);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(
              imagePath: location.imagePath,
              height: 245,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: LocationTile(location, false),
            )
          ]..addAll(locationTextSections(location)),
        ),
      ),
    );
  }

  List<Widget> locationTextSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
