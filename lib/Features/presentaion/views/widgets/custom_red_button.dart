import 'package:flutter/material.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class CustomRedButton extends StatelessWidget {
  const CustomRedButton({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: defaultButtomColor,
          borderRadius: BorderRadius.circular(24)),
      height: height * 0.065,
      width: width * 0.39,
      child: TextButton(
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.hourglass_bottom_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              '9 Months',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}