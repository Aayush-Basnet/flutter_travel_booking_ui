class Place {
  final String imageUrl;
  final String city;
  final String country;
  final int properties;
  final int time;

  Place(
      {required this.imageUrl,
      required this.city,
      required this.country,
      required this.properties,
      required this.time,
      });
}

final places = [
  Place(
    imageUrl: 'assets/images/amsterdam.jpg',
    city: 'Amsterdam',
    country: 'Netherlands',
    properties: 203,
    time: 7,
  ),
  Place(
    imageUrl: 'assets/images/bangkok.jpg',
    city: 'Bangkok',
    country: 'Thailand',
    properties: 301,
    time: 9,
  ),
  Place(
    imageUrl: 'assets/images/london.jpg',
    city: 'London',
    country: 'United Kingdom',
    properties: 310,
    time: 12,
  ),
  Place(
    imageUrl: 'assets/images/rome.jpg',
    city: 'Rome',
    country: 'Italy',
    properties: 235,
    time: 8,
  ),
  Place(
    imageUrl: 'assets/images/sydney.jpg',
    city: 'Sydney',
    country: 'Australia',
    properties: 159,
    time: 6,
  ),
  Place(
    imageUrl: 'assets/images/tokyo.jpg',
    city: 'Tokyo',
    country: 'Japan',
    properties: 253,
    time: 7,
  ),
];
