import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/services/buses.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final List<Buses> schedules = [
    Buses(bus: 1, time: '5:06', currentStop: '5.07', nextStop: '5.10'),
    Buses(bus: 2, time: '6:15', currentStop: '6.13', nextStop: '6.20'),
    Buses(bus: 3, time: '6:45', currentStop: '6.54', nextStop: '7.00'),
    Buses(bus: 4, time: '6:45', currentStop: '6.54', nextStop: '7.15'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: Color(0xFF8DECB4),
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
          body: Stack(
            children: [
              centerContainer(),
              Positioned(
                top: 5.0,
                right: 35.0,
                child: closeButton(),
              ),
            ],
          )
        ),
    );
  }

  Widget centerContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0), // Maintain padding around container
        child: Container(
          width: 350,
          height: 700,
          color: Color(0xFF41B06E),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Even gap between semua card tu
            children: [
              for (Buses bus in schedules) BusInfoCard(bus: bus), // Display semua bus yang ada
            ],
          ),
        ),
      ),
    );
  }

  Widget closeButton(){
    return ElevatedButton(
      onPressed: () async {
        dynamic result = await Navigator.of(context).pushNamed('/home');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.red,
        padding: EdgeInsets.zero,
      ),
    );
  }
}

class BusInfoCard extends StatelessWidget {
  final Buses bus;

  const BusInfoCard({required this.bus});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7FFE5),
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.all(10.0),
      width: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.directions_bus,
            color: Color(0xFF141E46),
            size: 70.0,
          ),
          SizedBox(width: 56.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoText(text:'Bus Number: ${bus.bus}'),
              InfoText(text: 'Time: ${bus.time}'),
              InfoText(text: 'Current Stop: ${bus.currentStop}'),
              InfoText(text: 'Next Stop: ${bus.nextStop}'),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoText extends StatefulWidget {
  final String text;
  const InfoText({required this.text});

  @override
  State<InfoText> createState() => _InfoTextState();
}

class _InfoTextState extends State<InfoText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
