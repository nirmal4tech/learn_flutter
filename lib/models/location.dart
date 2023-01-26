import 'location_fact.dart';

class Location {
  int id;
  String name;
  String imagePath;
  String userItinerarySummary;
  String tourPackageName;
  List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.userItinerarySummary,
      this.tourPackageName, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Ladakh', 'assets/images/ladakh.jpg', 'Day 1: 10AM - 3PM',
          'Standard Package', [
        LocationFact('Summary',
            'Ladakh, large area of the northern and eastern Kashmir region, northwestern Indian subcontinent. Administratively, Ladakh is divided between Pakistan (northwest), as part of Gilgit-Baltistan, and India (southeast), as part of Ladakh union territory (until October 31, 2019, part of Jammu and Kashmir state); in addition, China administers portions of northeastern Ladakh.'),
        LocationFact('Geography',
            'Ladakh covers about 45,000 square miles (117,000 square km) and contains the Ladakh Range, which is a southeastern extension of the Karakoram Range, and the upper Indus River valley. Ladakh is one of the highest regions of the world. Its natural features consist mainly of high plains and deep valleys. The high plain predominates in the east, diminishing gradually toward the west. In southeastern Ladakh lies Rupshu, an area of large, brackish lakes with a uniform elevation of about 13,500 feet (4,100 metres). To the northwest of Rupshu lies the Zaskar Range, an inaccessible region where the people and the cattle remain indoors for much of the year because of the cold. Zaskar is drained by the Zaskar River, which, flowing northward, joins the Indus River below Leh. In the heart of Ladakh, farther to the north, cultivation by means of manuring and irrigation is practiced by farmers living in valley villages at elevations between about 9,000 and 15,000 feet (2,750 and 4,550 metres). Shepherds tend flocks in the upland valleys that are too high for cultivation. Leh, the most accessible town of Ladakh, is an important trade centre located 160 miles (260 km) east of Srinagar.'),
      ]),
      Location(2, 'Kashmir', 'assets/images/kashmir.jpg', 'Day 2: 12M - 5PM',
          'Premium Package', [
        LocationFact('Summary',
            'Kashmir, region of the northwestern Indian subcontinent. It is bounded by the Uygur Autonomous Region of Xinjiang to the northeast and the Tibet Autonomous Region to the east (both parts of China), by the Indian states of Himachal Pradesh and Punjab to the south, by Pakistan to the west, and by Afghanistan to the northwest. The region, with a total area of some 85,800 square miles (222,200 square km), has been the subject of dispute between India and Pakistan since the partition of the Indian subcontinent in 1947. The northern and western portions are administered by Pakistan and comprise three areas: Azad Kashmir, Gilgit, and Baltistan, the last two being part of a single administrative unit called Gilgit-Baltistan (formerly Northern Areas). Administered by India are the southern and southeastern portions, Jammu and Kashmir and Ladakh. The Indian- and Pakistani-administered portions are divided by a “line of control” agreed to in 1972, although neither country recognizes it as an international boundary. In addition, China became active in the eastern area of Kashmir in the 1950s and has controlled the northeastern part of Ladakh (the easternmost portion of the region) since 1962.'),
        LocationFact('Land and People',
            'The Kashmir region is predominantly mountainous, with deep, narrow valleys and high, barren plateaus. The relatively low-lying Jammu and Punch (Poonch) plains in the southwest are separated by the thickly forested Himalayan foothills and the Pir Panjal Range of the Lesser Himalayas from the larger, more fertile, and more heavily populated Vale of Kashmir to the north. The vale, situated at an elevation of about 5,300 feet (1,600 metres), constitutes the basin of the upper Jhelum River and contains the city of Srinagar. Jammu and the vale lie in Indian-administered Jammu and Kashmir, while the Punch lowlands are largely in Azad Kashmir.'),
      ]),
      Location(3, 'Mt. Fuji', 'assets/images/mtfuji.jpg', 'Day 3: 9AM - 2PM',
          'Deluxe Package', [
        LocationFact('Summary',
            'Mount Fuji, Japanese Fuji-san, also spelled Fujisan, also called Fujiyama or Fuji no Yama, highest mountain in Japan. It rises to 12,388 feet (3,776 metres) near the Pacific Ocean coast in Yamanashi and Shizuoka ken (prefectures) of central Honshu, about 60 miles (100 km) west of the Tokyo-Yokohama metropolitan area. It is a volcano that has been dormant since its last eruption, in 1707, but is still generally classified as active by geologists. The mountain is the major feature of Fuji-Hakone-Izu National Park (1936), and it is at the centre of a UNESCO World Heritage site designated in 2013.'),
        LocationFact('Cultural significance',
            'The origin of the mountain’s name is uncertain. It first appears as Fuji no Yama in Hitachi no kuni fudoki (713 CE), an early government record. Among the several theories about the source of the name is that it is derived from an Ainu term meaning “fire,” coupled with san, the Japanese word for “mountain.” The Chinese ideograms (kanji) now used to write Fuji connote more of a sense of good fortune or well-being. In the present day the Japanese typically refer to the mountain as Fujisan, whereas foreign visitors tend to refer to the mountain somewhat incorrectly as Mount Fujiyama, which translates to “Mount Fuji mountain” in the Japanese language.'),
        LocationFact('Tourism and religious significance',
            'On the northern slopes of Mount Fuji lie the Fuji Five Lakes (Fuji Goko), comprising, east to west, Lake Yamanaka, Lake Kawaguchi, Lake Sai, Lake Shōji, and Lake Motosu, all formed by the damming effects of lava flows. The lowest, Lake Kawaguchi, at 2,726 feet (831 metres), is noted for the inverted reflection of Mount Fuji on its still waters. Tourism in the area is highly developed, with amusement parks, botanical gardens, ski resorts, and other recreational sites. Lake Yamanaka, the largest of the lakes (at 2.5 square miles [6.4 square km]), is one of the most popular resort areas. West of the mountain, the valley between Mount Fuji and Mount Kenashi also hosts numerous golf courses and other attractions. Southeast of Mount Fuji is the wooded volcanic Hakone region, well known for its hot-springs resorts at Yumoto and Gōra.'),
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
