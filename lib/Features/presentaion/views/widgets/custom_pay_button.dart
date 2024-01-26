import 'package:flutter/material.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class CustomPayButton extends StatelessWidget {
  const CustomPayButton({super.key, required this.onTap, this.text });
  final void Function() onTap;
  final Widget? text;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: defaultBackGroun,
        child: Padding(
          padding: const EdgeInsets.all(defaultBadding),
          child: Container(
            width: double.infinity,
            height: height * 0.0588,
            decoration: BoxDecoration(
              color: const Color(0xffD90429),
              borderRadius: BorderRadiusDirectional.circular(12),
            ),
            child: Center(
                child:text?? Text(
              'PAY',
              style: textStyle16.copyWith(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
