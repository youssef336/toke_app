// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:toke_app/components/numberContaner.dart';

import '../models/itemsModel.dart';

class Numbers_page extends StatelessWidget {
  const Numbers_page({super.key});
  final List<ItemsMobel> number = const [
    ItemsMobel(
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "one",
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_two.png",
        jpName: "ni",
        enName: "two",
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_three.png",
        jpName: "san",
        enName: "three",
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_four.png",
        jpName: "shi",
        enName: "four",
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_five.png",
        jpName: "go",
        enName: "five",
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_six.png",
        jpName: "roku",
        enName: "six",
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_seven.png",
        jpName: "shichi",
        enName: "seven",
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "eight",
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_nine.png",
        jpName: "kyuu",
        enName: "nine",
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemsMobel(
        image: "assets/images/numbers/number_ten.png",
        jpName: "juu",
        enName: "ten",
        sound: 'sounds/numbers/number_ten_sound.mp3')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff463025),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, int index) {
          return Contaner_number(
            item: number[index],
          );
        },
      ),
    );
  }
}

List<Widget> getlist(List<ItemsMobel> number) {
  List<Widget> itemsList = [];
  for (int i = 0; i < number.length; i++) {
    itemsList.add(Contaner_number(item: number[i]));
  }
  return itemsList;
}
