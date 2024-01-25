import 'package:flutter/material.dart';

class CustomAppar extends StatelessWidget {
  const CustomAppar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 5.5,
      decoration: const BoxDecoration(
          color: Color(0xff2B2D40),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))),
    );
  }
}