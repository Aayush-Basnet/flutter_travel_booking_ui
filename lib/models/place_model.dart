class Place {
  final String imageUrl;
  final String city;
  final String country;
  final int properties;

  Place(
      {required this.imageUrl,
      required this.city,
      required this.country,
      required this.properties});
}

final places = [
  Place(
    imageUrl: 'assets/images/amsterdam.jpg',
    city: 'Amsterdam',
    country: 'Netherlands',
    properties: 203,
  ),
  Place(
    imageUrl: 'assets/images/bangkok.jpg',
    city: 'Bangkok',
    country: 'Thailand',
    properties: 301,
  ),
  Place(
    imageUrl: 'assets/images/london.jpg',
    city: 'London',
    country: 'United Kingdom',
    properties: 310,
  ),
  Place(
    imageUrl: 'assets/images/rome.jpg',
    city: 'Rome',
    country: 'Italy',
    properties: 235,
  ),
  Place(
    imageUrl: 'assets/images/sydney.jpg',
    city: 'Sydney',
    country: 'Australia',
    properties: 159,
  ),
  Place(
    imageUrl: 'assets/images/tokyo.jpg',
    city: 'Tokyo',
    country: 'Japan',
    properties: 253,
  ),
];
