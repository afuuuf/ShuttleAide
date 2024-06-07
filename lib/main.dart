import 'package:flutter/material.dart';
import 'package:fyp/pages/schedule.dart';
import 'package:fyp/pages/home.dart';
void main() async => runApp(MaterialApp(

  initialRoute: '/home',
  routes: {
    '/home' : (context) => ShuttleAideHP(),
    '/schedule' : (context) => Schedule(),
  },
));