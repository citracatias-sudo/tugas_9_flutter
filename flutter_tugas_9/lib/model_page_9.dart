import 'package:flutter/material.dart';
import 'package:flutter_tugas_9/models/herspace_model.dart';

class ModelsPageday9 extends StatelessWidget {
  ModelsPageday9({super.key});

  final List<Welcome> data =
      welcomeFromJson(herSpaceJson);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];

        return ListTile(
          leading: Image.network(
            item.gambar ?? "",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(item.nama ?? ""),
          subtitle: Text(item.deskripsi ?? ""),
        );
      },
    );
  }
}
