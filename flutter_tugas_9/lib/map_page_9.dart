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
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: dataJenisLayanan.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 40,
          color: Color.fromARGB(255, 255, 176, 202),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "${dataJenisLayanan[index]}",
              style: TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
