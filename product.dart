// To parse this JSON data, do
//
//     final MenuModel = MenuModelFromJson(jsonString);

import 'dart:convert';

List<MenuModel> MenuModelFromJson(String str) =>
    List<MenuModel>.from(json.decode(str).map((x) => MenuModel.fromJson(x)));

String MenuModelToJson(List<MenuModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MenuModel {
  int id;
  String nama;
  int price;
  String description;
  String image;

  MenuModel({
    required this.id,
    required this.nama,
    required this.price,
    required this.description,
    required this.image,
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        id: json["ID"],
        nama: json["nama"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "nama": nama,
        "price": price,
        "description": description,
        "image": image,
      };
}
