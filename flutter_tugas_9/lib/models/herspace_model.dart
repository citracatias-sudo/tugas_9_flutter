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
  {
    "id": 1,
    "nama": "Personal Chat",
    "deskripsi": "Ruang aman untuk berbagi cerita.",
    "kategori": "Support",
    "gambar": "https://picsum.photos/200?1",
    "isPremium": false
  },
  {
    "id": 2,
    "nama": "Webinar",
    "deskripsi": "Webinar inspiratif untuk pengembangan diri.",
    "kategori": "Education",
    "gambar": "https://picsum.photos/200?2",
    "isPremium": true
  },
  {
    "id": 3,
    "nama": "Book Circle",
    "deskripsi": "Diskusi buku bersama komunitas.",
    "kategori": "Community",
    "gambar": "https://picsum.photos/200?3",
    "isPremium": false
  }
]
''';