import 'package:flutter/material.dart';

class CartModel {
  Color color;
  String title;
  int subtitle;

  CartModel({required this.color, required this.title, required this.subtitle});
}
List<CartModel> list = [
  CartModel(
    color: Colors.red,
    title: 'Red',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.green,
    title: 'Green',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.blue,
    title: 'Blue',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.pink,
    title: 'Pink',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.orange,
    title: 'Orange',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.amber,
    title: 'Amber',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.indigo,
    title: 'Indigo',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.yellow,
    title: 'Yellow',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.deepPurple,
    title: 'DeepPurple',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.pinkAccent,
    title: 'PinkAccent',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.red,
    title: 'Red',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.green,
    title: 'Green',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.blue,
    title: 'Blue',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.pink,
    title: 'Pink',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.orange,
    title: 'Orange',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.amber,
    title: 'Amber',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.indigo,
    title: 'Indigo',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.yellow,
    title: 'Yellow',
    subtitle: 20,
  ),
  CartModel(
    color: Colors.deepPurple,
    title: 'DeepPurple',
    subtitle: 10,
  ),
  CartModel(
    color: Colors.pinkAccent,
    title: 'PinkAccent',
    subtitle: 20,
  ),
];
List<String> selectedColorsNames = [];

int totalPrice = 0;