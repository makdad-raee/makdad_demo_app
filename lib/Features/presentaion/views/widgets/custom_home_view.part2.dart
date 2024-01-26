import 'package:flutter/material.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class CustomHomeViewPart2 extends StatelessWidget {
  const CustomHomeViewPart2({super.key, required this.text, this.note = true,  this.text1='Payout'});
final String? text1;
  final Widget text;
  final bool note;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: defaultBackGroun,
      width: double.infinity,
      child: Column(
        children: [
           Text(
            text1!,
            style: textStyle20,
          ),
          SizedBox(
            height: height * 0.0247,
          ),
          text,
          SizedBox(
            height: height * 0.0211,
          ),
          const Text('900.000 KWD', style: textStyle24),
          SizedBox(
            height: height * 0.04235,
          ),
          note
              ? const Text(
                  'Note: You have to pay transaction fee only this month.',
                  style: textStyle14,
                )
              : const SizedBox(
                  width: 1,
                ),
        ],
      ),
    );
  }
}
