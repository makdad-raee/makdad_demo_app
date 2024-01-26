import 'package:flutter/material.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppar extends StatelessWidget {
  const CustomAppar({super.key, this.history = true});
  final bool history;

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
            Text(
              'Jam3yia Title',
              style: textStyle16.copyWith(color: Colors.white),
            ),
            Spacer(),
            history
                ? PaymentHistory()
                : SizedBox(
                    width: 1,
                  )
          ],
        ),
      ),
    );
  }
}

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 26),
              child: SvgPicture.asset('assets/images/payment_history.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
