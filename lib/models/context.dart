import 'package:flutter/material.dart';

class CustomContainer {
  Color color;
  String image;
  String vegname;
  String money;
  String offer;
  String image1;
  Color color1;

  CustomContainer(
      {required this.color,
      required this.image,
      required this.vegname,
      required this.money,
      required this.offer,
      required this.image1,
      required this.color1});
}

List<CustomContainer> contents = [
  CustomContainer(
      color: Colors.green.shade100,
      image: "assets/images/Broccoli.png",
      vegname: "Broccoli",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.pink.shade100,
      image: "assets/images/watermelon-815072Clippng.png",
      vegname: "Watermelon",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.blue.shade100,
      image: "assets/images/purepng.png",
      vegname: "Chips",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.orange.shade100,
      image: "assets/images/Broccoli.png",
      vegname: "Broccoli",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.pink.shade100,
      image: "assets/images/watermelon-815072Clippng.png",
      vegname: "Watermelon",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.blue.shade100,
      image: "assets/images/purepng.png",
      vegname: "Chips",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.orange.shade100,
      image: "assets/images/Broccoli.png",
      vegname: "Broccoli",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.pink.shade100,
      image: "assets/images/watermelon-815072Clippng.png",
      vegname: "Watermelon",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.blue.shade100,
      image: "assets/images/purepng.png",
      vegname: "Chips",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
  CustomContainer(
      color: Colors.orange.shade100,
      image: "assets/images/Broccoli.png",
      vegname: "Broccoli",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png",
      color1: Colors.blue.shade100),
];

class CategoriesElem {
  String image;
  String name;
  Color color;

  CategoriesElem(
      {required this.image, required this.name, required this.color});
}

List<CategoriesElem> catcontents = [
  CategoriesElem(
      image: "assets/images/tokri.png",
      name: "Vegetables",
      color: Colors.blue.shade100),
  CategoriesElem(
      image: "assets/images/bowl.png",
      name: "Fruits",
      color: Colors.pink.shade100),
  CategoriesElem(
      image: "assets/images/dairy.png",
      name: "Diary",
      color: Colors.orange.shade100),
  CategoriesElem(
      image: "assets/images/Bathroom.png",
      name: "Households",
      color: Colors.green.shade100),
];

class GridElement {
  Color color;
  String image;
  String vegname;
  String money;
  String offer;
  String image1;

  GridElement(
      {required this.color,
      required this.image,
      required this.vegname,
      required this.money,
      required this.offer,
      required this.image1});
}

List<GridElement> gridcontents = [
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/Broccoli.png",
      vegname: "Fresh Broccoli",
      money: "₹ 40/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/tomatoess.png",
      vegname: "Tomatoes",
      money: "₹ 15/kg",
      offer: "50% off",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/redpepper.png",
      vegname: "Red Peppers",
      money: "₹ 20/kg",
      offer: "Bestseller",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/potatoes.png",
      vegname: "Potatoes",
      money: "₹ 20/kg",
      offer: "Get 3kg in just 50Rs.",
      image1: "assets/images/G.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/carrots.png",
      vegname: "Carrot",
      money: "₹ 20/kg",
      offer: "Bestseller",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/mashrooms.png",
      vegname: "Mashrooms",
      money: "₹ 60/kg",
      offer: "Get 3kg in just 150Rs.",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/Broccoli.png",
      vegname: "Broccoli",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/watermelon-815072Clippng.png",
      vegname: "Watermelon",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/purepng.png",
      vegname: "Chips",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png"),
  GridElement(
      color: Colors.pink.shade50,
      image: "assets/images/Broccoli.png",
      vegname: "Broccoli",
      money: "₹ 50/kg",
      offer: "60% off",
      image1: "assets/images/Group 603.png"),
];
