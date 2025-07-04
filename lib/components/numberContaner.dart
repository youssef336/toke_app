// ignore: duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toke_app/models/itemsModel.dart';

// ignore: must_be_immutable, camel_case_types
class Contaner_number extends StatelessWidget {
  Contaner_number(
      {super.key,
      required this.item,
      this.contanerColor = const Color(0xffF99532)});
  final ItemsMobel item;
  Color? contanerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: contanerColor,
      height: 85,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF5DC),
            child: Image.asset(
              item.image ?? "assets/images/colors/color_black.png",
            ),
          ),
          Expanded(child: Contaner_item(item: item))
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Pharses_Item extends StatelessWidget {
  const Pharses_Item({super.key, required this.item});
  final ItemsMobel item;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        color: const Color(0xff47A5CB),
        child: Contaner_item(item: item));
  }
}

// ignore: camel_case_types
class Contaner_item extends StatelessWidget {
  const Contaner_item({super.key, required this.item});
  final ItemsMobel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(item.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 6),
          child: IconButton(
            onPressed: () {
              final player = AudioPlayer();

              player.play(AssetSource(item.sound));
              player.setVolume(300);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
