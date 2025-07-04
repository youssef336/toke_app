import 'package:flutter/material.dart';
import 'package:toke_app/components/categores_item.dart';
import 'package:toke_app/screens/Colors_page.dart';
import 'package:toke_app/screens/Devoleper_page.dart';
import 'package:toke_app/screens/Family_Page.dart';
import 'package:toke_app/screens/Numers_page.dart';
import 'package:toke_app/screens/Pharses_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      backgroundColor: const Color(0xffFFF4D9),
      body: Column(
        children: [
          Category(
            width: double.infinity,
            text: "Numbers",
            color: const Color(0xffF99531),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const Numbers_page();
              }));
            },
          ),
          Category(
            width: double.infinity,
            text: "Family Members",
            color: const Color(0xff528031),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyPage();
              }));
            },
          ),
          Category(
            width: double.infinity,
            text: "Colors",
            color: const Color(0xff7D40A2),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
            width: double.infinity,
            text: "Pharses",
            color: const Color(0xff47A5CB),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PharsesPage();
              }));
            },
          ),
          const Spacer(
            flex: 1,
          ),
          Category(
            color: const Color(0xff49332A),
            width: double.infinity,
            text: "Devolper",
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DevoleperPage();
              }));
            },
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
