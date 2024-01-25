import 'package:flutter/material.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class IconWIthDetailsItem extends StatelessWidget {
  const IconWIthDetailsItem({
    super.key,
    required this.txt,
    required this.date,
    required this.icon,
  });
  final String txt;
  final String date;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(txt, style: textStyle16),
            const SizedBox(
              height: 7,
            ),
            Text(date, style: textStyle16),
          ],
        ),
      ],
    );
  }
}