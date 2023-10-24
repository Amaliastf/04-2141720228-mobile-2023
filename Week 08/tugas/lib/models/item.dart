import 'package:flutter/material.dart';
import 'package:tugas/pages/home_page.dart';

class Item {
  String name;
  int price;
  String image; // Atribut foto produk
  int stock; // Atribut stok
  double rating; // Atribut rating

  Item({
    required this.name,
    required this.price,
    required this.image,
    required this.stock,
    required this.rating,
  });
}



