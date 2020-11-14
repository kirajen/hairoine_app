import 'package:flutter/material.dart';

class Product {

  String name;
  List<String> ingredients;
  String type;
  Color color;

  Product(String name, List<String> ingredients, String type, Color color) {
    this.name = name;
    this.ingredients = ingredients;
    this.type = type;
    this.color = color;
  }

}