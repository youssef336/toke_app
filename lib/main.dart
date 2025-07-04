import 'package:flutter/material.dart';
import 'package:toke_app/screens/home_page.dart';

void main() {
  runApp(const Toke_app());
}

// ignore: camel_case_types
class Toke_app extends StatelessWidget {
  const Toke_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
