import 'package:book_my_place/models/place_model.dart';
import 'package:book_my_place/screens/place_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 0= Hotels, 1= Flights
  int _searchType = 0;

  Column _buildPopularPlaces() {
    List<Widget> popularPlaces = [];
    places.forEach((place) {
      popularPlaces.add(Container(
        height: 80,
        child: Center(
          child: ListTile(
            leading: Hero(
              tag: place.imageUrl,
              child: Image(
                image: AssetImage(place.imageUrl),
              ),
            ),
            title: Text(
              place.city,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '${place.properties} properties',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            trailing: InkResponse(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceScreen(place: place),
                  ),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0XFFFAF6F1),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ));
    });
    return Column(children: popularPlaces);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () => print('Menu'),
                icon: Icon(Icons.menu),
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Book unique homes and experiences',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: _searchType == 0
                        ? Colors.transparent
                        : Color(0XFFD2D1D6),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _searchType = 0;
                  });
                },
                color: _searchType == 0 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'Hotels',
                  style: _searchType == 0
                      ? TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)
                      : TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: _searchType == 1
                        ? Colors.transparent
                        : Color(0XFFD2D1D6),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _searchType = 1;
                  });
                },
                color: _searchType == 1 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'Flights',
                  style: _searchType == 1
                      ? TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)
                      : TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Where',
              icon: Container(
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFEEF8FF),
                ),
                child: Icon(
                  Icons.location_on,
                  size: 22,
                  color: Color(0XFF309DF1),
                ),
              ),
            ),
          ),
          Divider(
            height: 40,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Check-in - Check-out',
              icon: Container(
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFEEF8FF),
                ),
                child: Icon(
                  Icons.calendar_today,
                  size: 22,
                  color: Color(0XFF309DF1),
                ),
              ),
            ),
          ),
          Divider(
            height: 40,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '1 Adults, 0 Children, 1 Room',
              icon: Container(
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFEEF8FF),
                ),
                child: Icon(
                  Icons.person,
                  size: 24,
                  color: Color(0XFF309DF1),
                ),
              ),
            ),
          ),
          Divider(
            height: 40,
          ),
          MaterialButton(
            padding: EdgeInsets.symmetric(vertical: 23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Color(0XFF309DF1),
              ),
            ),
            onPressed: () => print('Search'),
            color: Colors.blue,
            child: Text(
              'Search',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            'Popular places',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 18,
          ),
          _buildPopularPlaces(),
        ],
      ),
    );
  }
}
