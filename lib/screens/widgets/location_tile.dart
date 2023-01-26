import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../style.dart';

const LocationTileHeight = 100.0;

class LocationTile extends StatelessWidget {
  Location location;
  bool darkTheme = false;

  LocationTile(this.location, this.darkTheme);

  @override
  Widget build(BuildContext context) {
    final Color textColor = darkTheme ? TextColorLight : TextColorDark;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: LocationTileHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            location.name.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            location.userItinerarySummary.toUpperCase(),
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            location.tourPackageName.toUpperCase(),
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
