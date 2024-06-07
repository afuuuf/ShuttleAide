import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Markers {
  static final List<Marker> shuttleStops = [
    Marker(
      point: LatLng(3.24959052365000, 101.7337247523525), // OSEM
      width: 25,
      height: 25,
      child: Icon(
        Icons.pin_drop_sharp,
        color: Colors.black,
      ),
    ),
    Marker(
      point: LatLng(3.250648, 101.731186), //KAED
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.254226, 101.729083), //KICT
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.254397, 101.732168), //KOE
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.255722, 101.733235), //Hafsa
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.257373, 101.733618), //Asma
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.259226, 101.734471), //Halimah
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.259585, 101.735581), //Maryam
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.254224, 101.733326), //Clinic
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.254118, 101.734475), //FSC
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.253157, 101.736071), //HS
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.254966, 101.739147), //Salahuddin
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.252334, 101.738590), //AIKOL
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.249735, 101.738928), //Stadium
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.249143, 101.736764), //Ali
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
    Marker(
      point: LatLng(3.249411, 101.734706), //Safiyyah
      width: 25,
      height: 25,
      child: Icon(Icons.pin_drop_sharp),
    ),
  ];
}