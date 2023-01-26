import 'location_fact.dart';

class Location {
  int id;
  String name;
  String imagePath;
  List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'laddakh', 'assets/images/laddakh.jpg', [
        LocationFact('Laddakh - fact 1 - Summary',
            'Laddakh - fact 1 - Detail - dfjfd fdjkfdj fdkjdfjk dfkdfjk dfkjdfj dfkjdfj dfkjdf dfkjdfjk fdfdkjdffdkjfdj'),
        LocationFact('Laddakh - fact 2 - Summary',
            'Laddakh - fact 2 - Detail - dfjfd fdjkfdj fdkjdfjk dfkdfjk dfkjdfj dfkjdfj dfkjdf dfkjdfjk fdfdkjdffdkjfdj'),
      ]),
      Location(2, 'kashmir', 'assets/images/kashmir.jpg', [
        LocationFact('kashmir - fact 1 - Summary',
            'kashmir - fact 1 - Detail - dfjfd fdjkfdj fdkjdfjk dfkdfjk dfkjdfj dfkjdfj dfkjdf dfkjdfjk fdfdkjdffdkjfdj'),
        LocationFact('kashmir - fact 2 - Summary',
            'kashmir - fact 2 - Detail - dfjfd fdjkfdj fdkjdfjk dfkdfjk dfkjdfj dfkjdfj dfkjdf dfkjdfjk fdfdkjdffdkjfdj'),
      ]),
      Location(3, 'Mt. Fuji', 'assets/images/mtfuji.jpg', [
        LocationFact('Mt. Fuji - fact 1 - Summary',
            'Mt. Fuji - fact 1 - Detail - dfjfd fdjkfdj fdkjdfjk dfkdfjk dfkjdfj dfkjdfj dfkjdf dfkjdfjk fdfdkjdffdkjfdj'),
        LocationFact('Mt. Fuji - fact 2 - Summary',
            'Mt. Fuji - fact 2 - Detail - dfjfd fdjkfdj fdkjdfjk dfkdfjk dfkjdfj dfkjdfj dfkjdf dfkjdfjk fdfdkjdffdkjfdj'),
        LocationFact('Mt. Fuji - fact 3 - Summary',
            'Mt. Fuji - fact 3 - Detail - dfjfd fdjkfdj fdkjdfjk dfkdfjk dfkjdfj dfkjdfj dfkjdf dfkjdfjk fdfdkjdffdkjfdj'),
      ]),
    ];
  }

  static Location fetchById(int id) {
    for (var location in fetchAll()) {
      if (location.id == id) {
        return location;
      }
    }
    return fetchAll().first;
  }
}
