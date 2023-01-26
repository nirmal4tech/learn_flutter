import 'package:flutter/material.dart';
import '../widgets/location_tile.dart';
import '../../models/location.dart';
import '../../style.dart';

class TileOverlay extends StatelessWidget {
  Location location;

  TileOverlay(this.location);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: TextColorDark.withOpacity(0.5)),
          child: LocationTile(location, true),
        )
      ],
    );
  }
}
