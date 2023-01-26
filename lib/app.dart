import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

const locationsRoute = '/';
const locationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: _appRoutes(), theme: _appThemeData());
  }

  ThemeData _appThemeData() {
    return ThemeData(
      appBarTheme: AppBarTheme(titleTextStyle: AppBarTextStyle),
      textTheme: TextTheme(
        headline5: TitleTextStyle,
        headline6: SubtitleTextStyle,
        caption: CaptionTextStyle,
        bodyText1: BodyTextStyle,
      ),
    );
  }

  RouteFactory _appRoutes() {
    return (settings) {
      // Map<String, dynamic> arguments =
      // settings.arguments as Map<String, dynamic>;
      // settings.arguments;

      Widget screen;

      switch (settings.name) {
        case locationsRoute:
          screen = Locations();
          break;
        case locationDetailRoute:
          Map<String, dynamic> arguments =
              settings.arguments as Map<String, dynamic>;
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
