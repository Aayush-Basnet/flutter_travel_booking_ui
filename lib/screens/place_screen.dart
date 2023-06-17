import 'package:book_my_place/models/place_model.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatefulWidget {
  final Place place;
  PlaceScreen({required this.place});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                    tag: widget.place.imageUrl,
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                          color: Color(0XFFE5F2FF),
                          image: DecorationImage(
                              image: AssetImage(widget.place.imageUrl),
                              fit: BoxFit.cover)),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () => print('Menu'),
                        icon: Icon(Icons.menu),
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 250,
              width: double.infinity,
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${widget.place.city}, ${widget.place.country}',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.event_available,
                          size: 50,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Tour of ${widget.place.city}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Duration: ${widget.place.time} hours',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        height: 100,
        decoration: BoxDecoration(
          color: Color(0XFF1D4383),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${widget.place.properties}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Properties Found',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            MaterialButton(
              onPressed: () => print('See All'),
              color: Color(0XFFDFF1FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'See All',
                style: TextStyle(
                    color: Color(0XFF309DF1),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
