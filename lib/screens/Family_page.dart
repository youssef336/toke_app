// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:toke_app/components/numberContaner.dart';
import 'package:toke_app/models/itemsModel.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemsMobel> number = const [
    ItemsMobel(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojiisan",
        enName: "Grandfather",
        sound: 'sounds/family_members/grand father.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grandmother",
        sound: 'sounds/family_members/grand mother.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "Father",
        sound: 'sounds/family_members/father.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "Mother",
        sound: 'sounds/family_members/mother.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "oniisan",
        enName: "Older brother",
        sound: 'sounds/family_members/older bother.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "ane",
        enName: "Older sister",
        sound: 'sounds/family_members/older sister.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "otouto",
        enName: "Younger brother",
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "imouto",
        enName: "Younger sister",
        sound: 'sounds/family_members/younger sister.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_son.png",
        jpName: "Otoko",
        enName: "Son",
        sound: 'sounds/family_members/son.wav'),
    ItemsMobel(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Ojousan",
        enName: "Daughter",
        sound: 'sounds/family_members/daughter.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff463025),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, int index) {
          return Contaner_number(
            contanerColor: const Color(0xff538634),
            item: number[index],
          );
        },
      ),
    );
  }
}
