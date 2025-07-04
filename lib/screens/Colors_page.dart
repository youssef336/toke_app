// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:toke_app/components/numberContaner.dart';

import '../models/itemsModel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemsMobel> number = const [
    ItemsMobel(
        image: "assets/images/colors/color_black.png",
        jpName: "	Purakku",
        enName: "Black",
        sound: 'sounds/colors/black.wav'),
    ItemsMobel(
        image: "assets/images/colors/color_brown.png",
        jpName: "	Chairo",
        enName: "Brown",
        sound: 'sounds/colors/brown.wav'),
    ItemsMobel(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Kiiro",
        enName: "Dusty Yellow",
        sound: 'sounds/colors/yellow.wav'),
    ItemsMobel(
        image: "assets/images/colors/color_gray.png",
        jpName: "Gurei",
        enName: "Gray",
        sound: 'sounds/colors/gray.wav'),
    ItemsMobel(
        image: "assets/images/colors/color_green.png",
        jpName: "	Midori",
        enName: "Green",
        sound: 'sounds/colors/green.wav'),
    ItemsMobel(
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "Red",
        sound: 'sounds/colors/red.wav'),
    ItemsMobel(
        image: "assets/images/colors/color_white.png",
        jpName: "	Shiro",
        enName: "White",
        sound: 'sounds/colors/white.wav'),
    ItemsMobel(
        image: "assets/images/colors/yellow.png",
        jpName: "Kiiro",
        enName: "Yellow",
        sound: 'sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff463025),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, int index) {
          return Contaner_number(
              contanerColor: const Color(0xff7D40A2), item: number[index]);
        },
      ),
    );
  }
}
