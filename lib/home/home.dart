import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentTime = '';
  String greeting = '';

  @override
void initState() {
  super.initState();

  final now = DateTime.now();
  currentTime = DateFormat('HH:mm').format(now);
  greeting = _getGreeting(now.hour);

  Timer.periodic(const Duration(seconds: 1), (Timer timer) {
    setState(() {
      final now = DateTime.now();
      currentTime = DateFormat('HH:mm').format(now);
      greeting = _getGreeting(now.hour);
    });
  });
}

  String _getGreeting(int hour) {
    if (hour < 12) {
      return ' صبح بخیر';
    } else if (hour < 18) {
      return ' ظهر بخیر';
    } else {
      return ' شبت پرتقالـی  ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 0),
          AppHeader(time: currentTime, greeting: greeting),
        ],
      ),
    );
  }
}

// -------------------- ویجت‌های ساختاری --------------------

class AppHeader extends StatelessWidget {
  final String time;
  final String greeting;

  const AppHeader({required this.time, required this.greeting, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.solid),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: const Color.fromARGB(255, 0, 149, 109),
      ),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimeBox(time: time),
          GreetingBox(greeting: greeting),
        ],
      ),
    );
  }
}

class TimeBox extends StatelessWidget {
  final String time;
  const TimeBox({required this.time, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 254, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(style: BorderStyle.solid, width: 3),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.access_time),
                Text(
                  ' ساعت ',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'aseman',
                    color: Color.fromARGB(255, 0, 149, 109),
                  ),
                ),
              ],
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'aseman',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GreetingBox extends StatelessWidget {
  final String greeting;
  const GreetingBox({required this.greeting, super.key});

  @override
  Widget build(BuildContext context) {
    Icon icon;
    if (greeting == ' صبح بخیر') {
      icon = const Icon(Icons.wb_sunny, color: Colors.amber);
    } else if (greeting == ' ظهر بخیر') {
      icon = const Icon(Icons.brightness_5, color: Colors.amber);
    } else {
      icon = const Icon(Icons.nightlight_round, color: Colors.amber);
    }

    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 254, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(style: BorderStyle.solid, width: 3),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              greeting,
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'aseman',
                color: Color.fromARGB(255, 0, 149, 109),
              ),
            ),
          ),
        ],
      ),
    );
  }
}