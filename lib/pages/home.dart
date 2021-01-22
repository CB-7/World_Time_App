import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  String img;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    img = data['isDay'] ? 'day1.png' : 'night.png';
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/$img'), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 140.0,
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(
                Icons.edit_location,
                color: Colors.white,
              ),
              label: Text(
                'Select  Location',
                style: TextStyle(color: Colors.grey[200], fontSize: 18),
              ),
            ),
            SizedBox(height: 60.0),
            Center(
              child: Text(
                data['location'],
                style: TextStyle(fontSize: 45.0, color: Colors.grey[200]),
              ),
            ),
            SizedBox(height: 25.0),
            Center(
              child: Text(
                data['time'],
                style: TextStyle(fontSize: 70.0, color: Colors.grey[50]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
