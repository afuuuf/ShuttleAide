import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fyp/services/bus_stop.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ShuttleAideHP extends StatefulWidget {

  @override
  State<ShuttleAideHP> createState() => _ShuttleAideHPState();
}

class _ShuttleAideHPState extends State<ShuttleAideHP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  'assets/FYP_ShuttleAide_Logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            extendBodyBehindAppBar: true,
            body: Stack(
              children: [
                bottomPanel(),
                Positioned(
                  top: 50.0,
                  right: 15.0,
                  child: scheduleButton(),
                ),
              ],
            )
        )
    );
  }

  Widget mapDisplay() {
    return FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(3.2525, 101.7345),
          initialZoom: 17.00,
        ),
        children: [
          openStreetMapTileLayer,
          MarkerLayer(
            markers: Markers.shuttleStops, // Nak call marker dari bus_stop.dart
          )
        ]
    );
  }

  Widget bottomPanel() {
    return SlidingUpPanel(
      minHeight: MediaQuery.of(context).size.height * 0.1,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
      parallaxEnabled: true,
      color:  Colors.white,
      body: mapDisplay(),
      panelBuilder: (controller) {
        return SingleChildScrollView(
          controller : controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top : 15),
                  height: 6,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300
                  ),

                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget scheduleButton(){
    return FloatingActionButton.extended(
      onPressed: () async {
        dynamic result = await Navigator.pushNamed(context, '/schedule');
      },
      icon: Icon(Icons.pie_chart),
      label: const Text(
        "Schedules",
        style: TextStyle(
          fontFamily: 'Arial',
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'com.example.app',
);