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
    {
      "nama": "Debby",
      "interest": "Games",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
    },
    {
      "nama": "Syifa",
      "interest": "Sports",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
    },
    {
      "nama": "Lana",
      "interest": "movie",
      "foto":
          "https://cdn.pixabay.com/photo/2025/06/05/17/56/girl-9643466_1280.jpg"
    },
    {
      "nama": "Jasmine",
      "interest": "books",
      "foto":
          "https://www.bigissue.com/wp-content/uploads/2025/04/1661_AURORA-credit_-Wanda-Martin.jpg"
    },
    {
      "nama": "Brie",
      "interest": "politics",
      "foto":
          "https://cdn.pixabay.com/photo/2025/06/05/17/58/girl-9643473_1280.jpg"
    },
    {
      "nama": "Debby",
      "interest": "Games",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
    },
    {
      "nama": "Syifa",
      "interest": "Sports",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
    },
    {
      "nama": "Lana",
      "interest": "movie",
      "foto":
          "https://cdn.pixabay.com/photo/2025/06/05/17/56/girl-9643466_1280.jpg"
    },
    {
      "nama": "Jasmine",
      "interest": "books",
      "foto":
          "https://www.bigissue.com/wp-content/uploads/2025/04/1661_AURORA-credit_-Wanda-Martin.jpg"
    },
    {
      "nama": "Brie",
      "interest": "politics",
      "foto":
          "https://cdn.pixabay.com/photo/2025/06/05/17/58/girl-9643473_1280.jpg"
    },
    {
      "nama": "Bening",
      "interest": "Beauty",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
    },
    {
      "nama": "Regi",
      "interest": "Fitness",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
    },
    {
      "nama": "Angella",
      "interest": "",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
    },
    {
      "nama": "Billa",
      "interest": "sSports",
      "foto":
          "https://cdn.pixabay.com/photo/2024/06/06/17/16/woman-8813205_1280.jpg"
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

return Container(
  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 255, 255, 255),
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 12,
        offset: Offset(0, 6),
      ),
    ],
  ),
  child: ListTile(
    contentPadding: EdgeInsets.all(12),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    ),
    title: Text(
      name,
      style: TextStyle(fontWeight: FontWeight.w600),
    ),
    subtitle: Text(interests),
  ),
);
      },
    );
  }
}
