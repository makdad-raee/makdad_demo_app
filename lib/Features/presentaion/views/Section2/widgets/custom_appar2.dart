import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class CustomAppar2 extends StatelessWidget {
  const CustomAppar2({super.key, this.checkOut = true});
  final bool checkOut;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.118823529,
      decoration: const BoxDecoration(
        color: Color(0xff2B2D40),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.04),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 26,
                  width: 26,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      'assets/images/arrow_svg',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                checkOut
                    ? Text(
                        'Checkout',
                        style: textStyle16.copyWith(color: Colors.white),
                      )
                    : const SizedBox(
                        width: 1,
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}