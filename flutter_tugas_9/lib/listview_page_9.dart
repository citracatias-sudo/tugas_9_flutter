import 'package:flutter/material.dart';

class ListViewTugas extends StatelessWidget {
  ListViewTugas({super.key});

  final List<Map<String, String>> dataUser = [
    {
      "nama": "Alice",
      "interest": "sports",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg",
    },
    {
      "nama": "Lana",
      "interest": "movie",
      "foto":
          "https://cdn.pixabay.com/photo/2025/06/05/17/56/girl-9643466_1280.jpg",
    },
    {
      "nama": "Jasmine",
      "interest": "books",
      "foto":
          "https://www.bigissue.com/wp-content/uploads/2025/04/1661_AURORA-credit_-Wanda-Martin.jpg",
    },
    {
      "nama": "Brie",
      "interest": "politics",
      "foto":
          "https://cdn.pixabay.com/photo/2025/06/05/17/58/girl-9643473_1280.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataUser.length,
      itemBuilder: (BuildContext context, int index) {
        final user = dataUser[index];
        final name = user['nama'] ?? '';
        final interests = user['interest'] ?? '';
        final image = user['foto'] ?? '';

        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(name),
          subtitle: Text(interests),
        );
      },
    );
  }
}
