import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Montserrat', 'assets/images/island.jpg', [
        LocationFact('Summary',
            'Very beautiful spot. There are a lot of empty beaches and hiking places. Good spots for drinks and get to great Goat Water.'),
        LocationFact('How to Get There',
            'Montserrat airport is tiny bcause their previous airport was destroyed by the volcano you have to fly to antigua to access the airport via an 8 seater prop plane.'),
      ]),
      Location(2, 'Red Rocks', 'assets/images/red_rocks.jpg', [
        LocationFact('Summary',
            'Very beautiful ampitheatre. Huge Mountain Ranges. Very chill outdoorsy culture.'),
        LocationFact('How to Get There',
            'Fly in to the denver airport and then it is about a 30 minute drive from the city.'),
      ]),
      Location(3, 'Barcelona', 'assets/images/barcelona.jpg', [
        LocationFact('Summary',
            'Amazing cultural hub. Delicious fiid and tons to do for most any interest.'),
        LocationFact('How to Get There',
            'Fly into the barcelona airport and there is public transportation or taxis to get to the main city.'),
      ]),
    ];
  }

  static Location? fetchByID(int locationID) {
    //fetch all locations, iterate them
    //when we find location with ID we want return it
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
