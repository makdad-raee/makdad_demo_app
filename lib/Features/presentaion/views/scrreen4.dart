import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/custom_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/screen5.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view.part2.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view_part1.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_pay_button.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppar(),
            const CustomHomeViewPart1(amberButton: PaymentDelayButton()),
            const CustomHomeViewPart2(
              text1: 'Next payment',
              note: false,
              text: Text(
                '20 days remaining for the next payment!',
                style: textStyle16,
              ),
            ),
            CustomPayButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>const Screen5(),
                ));
              },
            ),
          Container(
              color: Colors.white,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class PaymentDelayButton extends StatelessWidget {
  const PaymentDelayButton({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffD96E04),
          borderRadius: BorderRadius.circular(24)),
      height: height * 0.065,
      width: width * 0.39,
      child: TextButton(
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 7,
            ),
            Text(
              'Payment Delay',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
