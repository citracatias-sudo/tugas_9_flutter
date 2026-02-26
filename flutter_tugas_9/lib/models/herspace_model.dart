import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(
        json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  int? id;
  String? nama;
  String? deskripsi;
  String? kategori;
  String? gambar;
  bool? isPremium;

  Welcome({
    this.id,
    this.nama,
    this.deskripsi,
    this.kategori,
    this.gambar,
    this.isPremium,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      Welcome(
        id: json["id"],
        nama: json["nama"],
        deskripsi: json["deskripsi"],
        kategori: json["kategori"],
        gambar: json["gambar"],
        isPremium: json["isPremium"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "deskripsi": deskripsi,
        "kategori": kategori,
        "gambar": gambar,
        "isPremium": isPremium,
      };
}
const String herSpaceJson = '''
[
  {"id": 1, "nama": "Personal Chat", "deskripsi": "Ruang aman untuk berbagi cerita.", "kategori": "Support", "gambar": "https://picsum.photos/200?1", "isPremium": false},
  {"id": 2, "nama": "Webinar", "deskripsi": "Webinar inspiratif untuk pengembangan diri.", "kategori": "Education", "gambar": "https://picsum.photos/200?2", "isPremium": false},
  {"id": 3, "nama": "Book Circle", "deskripsi": "Diskusi buku bersama komunitas.", "kategori": "Community", "gambar": "https://picsum.photos/200?3", "isPremium": false},
  {"id": 4, "nama": "Fitness Group", "deskripsi": "Latihan bersama untuk kebugaran mental dan fisik.", "kategori": "Health", "gambar": "https://picsum.photos/200?4", "isPremium": false},
  {"id": 5, "nama": "Career Coaching", "deskripsi": "Sesi karier dan pengembangan profesional.", "kategori": "Career", "gambar": "https://picsum.photos/200?5", "isPremium": false},
  {"id": 6, "nama": "Art Therapy", "deskripsi": "Ekspresikan diri melalui seni dan kreativitas.", "kategori": "Therapy", "gambar": "https://picsum.photos/200?6", "isPremium": false},
  {"id": 7, "nama": "Parenting Talk", "deskripsi": "Dukungan dan tips untuk orang tua.", "kategori": "Family", "gambar": "https://picsum.photos/200?7", "isPremium": false},
  {"id": 8, "nama": "Meditation Club", "deskripsi": "Latihan mindfulness dan meditasi harian.", "kategori": "Wellness", "gambar": "https://picsum.photos/200?8", "isPremium": false},
  {"id": 9, "nama": "Language Exchange", "deskripsi": "Belajar bahasa baru bersama.", "kategori": "Education", "gambar": "https://picsum.photos/200?9", "isPremium": false},
  {"id": 10, "nama": "Coding Study", "deskripsi": "Belajar pemrograman dalam kelompok.", "kategori": "Education", "gambar": "https://picsum.photos/200?10", "isPremium": false},
  {"id": 11, "nama": "Mental Health Q&A", "deskripsi": "Tanya jawab dengan praktisi kesehatan mental.", "kategori": "Support", "gambar": "https://picsum.photos/200?11", "isPremium": false},
  {"id": 12, "nama": "Photography Walk", "deskripsi": "Keliling kota sambil belajar fotografi.", "kategori": "Hobby", "gambar": "https://picsum.photos/200?12", "isPremium": false},
  {"id": 13, "nama": "Cooking Class", "deskripsi": "Resep sehat dan praktis untuk sehari-hari.", "kategori": "Lifestyle", "gambar": "https://picsum.photos/200?13", "isPremium": false},
  {"id": 14, "nama": "Design Critique", "deskripsi": "Mendapatkan umpan balik untuk karya desain.", "kategori": "Portfolio", "gambar": "https://picsum.photos/200?14", "isPremium": false},
  {"id": 15, "nama": "Startup Founders", "deskripsi": "Diskusi tentang membangun usaha dari nol.", "kategori": "Business", "gambar": "https://picsum.photos/200?15", "isPremium": false},
  {"id": 16, "nama": "Sustainability Talk", "deskripsi": "Praktik sehari-hari untuk hidup lebih ramah lingkungan.", "kategori": "Environment", "gambar": "https://picsum.photos/200?16", "isPremium": false},
  {"id": 17, "nama": "Poetry Night", "deskripsi": "Membaca dan berbagi puisi.", "kategori": "Art", "gambar": "https://picsum.photos/200?17", "isPremium": false},
  {"id": 18, "nama": "Finance Basics", "deskripsi": "Manajemen keuangan pribadi untuk pemula.", "kategori": "Finance", "gambar": "https://picsum.photos/200?18", "isPremium": false},
  {"id": 19, "nama": "Travel Buddies", "deskripsi": "Berbagi pengalaman dan rencana perjalanan.", "kategori": "Community", "gambar": "https://picsum.photos/200?19", "isPremium": false},
  {"id": 20, "nama": "DIY Workshop", "deskripsi": "Proyek kerajinan tangan yang mudah diikuti.", "kategori": "Hobby", "gambar": "https://picsum.photos/200?20", "isPremium": false}
]
''';