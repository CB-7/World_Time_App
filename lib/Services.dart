import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String time;
  String url;
  String location;
  String flag;
  bool isDay;

  WorldTime({this.location, this.url, this.flag});

  Future<void> getTime() async {
    try {
      Response response =
          await get('https://worldtimeapi.org/api/timezone/$url');
      //print(response.body);
      Map data = jsonDecode(response.body);
      //print(data);
      String datetime = data['datetime'];
      //print(data['utc_offset']);
      String hours = data['utc_offset'].substring(1, 3);
      String minutes = data['utc_offset'].substring(4, 6);
      // print(hours);
      //print(minutes);

      DateTime currTime = DateTime.parse(datetime);
      //print(currTime);
      currTime = currTime
          .add(Duration(hours: int.parse(hours), minutes: int.parse(minutes)));

      isDay = currTime.hour > 6 && currTime.hour < 20 ? true : false;
      time = DateFormat.jm().format(currTime);
      // print(time);
    } catch (e) {
      print('Error caught:$e');
      time = 'Try Again';
      isDay = true;
    }
  }
}
