import 'package:flutter/material.dart';
import 'package:world_time_app/Services.dart';
import 'package:world_time_app/Services.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'Dubai.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'Berlin.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'India', flag: 'India.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'Bangkok.png'),
    WorldTime(
        url: 'Asia/Dhaka', location: 'Bangladesh', flag: 'Bangladesh.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Karanchi', flag: 'Pakistan.png'),
    WorldTime(url: 'Asia/Kathmandu', location: 'Nepal', flag: 'Nepal.png'),
    WorldTime(
        url: 'Asia/Kuala_Lumpur', location: 'Malaysia', flag: 'Malaysia.png'),
    WorldTime(
        url: 'Asia/Singapore', location: 'Singapore', flag: 'Singapore.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Japan', flag: 'Japan.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'London.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'Chicago.png'),
    WorldTime(
        url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'HongKong.png'),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'Sydney.png'),
  ];

  void updateTime(index) async {
    WorldTime obj = locations[index];
    Navigator.pushNamed(context, '/load', arguments: {'obj': obj});
  }

  @override
  Widget build(BuildContext context) {
    //print('In Build State');
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            );
          }),
    );
  }
}
