import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../app.dart';
import '../widgets/image_banner.dart';
import 'tile_overlay.dart';

class Locations extends StatelessWidget {
  final locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, locations[index]),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, locationDetailRoute,
        arguments: {'id': locationId});
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      onTap: () => _onLocationTap(context, location.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(
              imagePath: location.imagePath,
              height: 245.0,
            ),
            TileOverlay(location),
          ],
        ),
      ),
    );
  }
}
