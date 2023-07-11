import 'package:flutter/material.dart';

class KangItService {
  final String image;
  Color color;
  String title;

  KangItService(this.image, this.color, this.title);
}

class Asus {
  String title;
  String image;
  Asus(this.title, this.image);
}

class Promo{
  String image;
  String title;
  String content;
  String button;

  Promo(this.image, this.title, this.content, this.button);
}