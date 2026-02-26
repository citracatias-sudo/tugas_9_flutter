import 'package:flutter/material.dart';

class MapPageDay9 extends StatelessWidget {
  MapPageDay9({super.key});

  final List<String> dataJenisLayanan = [
    "Personal Chat",
    "Webinar",
    "Book Talk",
    "Professional Help",
    "News from Community",
    "Events",
    "Workshop",
    "Volunteer's Coaching",
    "Latest News",
    "Being a contributor",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 8),
        itemCount: dataJenisLayanan.length,
        itemBuilder: (context, index) {
          return Container(
            margin:  EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            padding:  EdgeInsets.all(12),
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 255, 176, 202),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 67, 65, 65),
                  blurRadius: 8,
                  offset:  Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              dataJenisLayanan[index],
              style:  TextStyle(fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}