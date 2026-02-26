import 'package:flutter/material.dart';
import 'package:flutter_tugas_9/listview_page_9.dart';
import 'package:flutter_tugas_9/map_page_9.dart';
import 'package:flutter_tugas_9/model_page_9.dart';

class ScaffoldDay9 extends StatefulWidget {
  const ScaffoldDay9({super.key});

  @override
  State<ScaffoldDay9> createState() => _ScaffoldDay9State();
}

class _ScaffoldDay9State extends State<ScaffoldDay9> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ListViewTugas(),
    MapPageDay9(),
    ModelsPageday9(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Herspace"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 221, 173, 189),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user_rounded),
            label: "User Info",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services_rounded),
            label: "Services",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Model"),
        ],
      ),
    );
  }
}
