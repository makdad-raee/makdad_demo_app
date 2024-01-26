import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/custom_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/scrreen4.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view.part2.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view_part1.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_pay_button.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Column(
                  children: [
                    const CustomAppar(),
                    const CustomHomeViewPart1(),
                    CustomHomeViewPart2(
                      text1: 'Next payment',
                      text: Text(
                        'Your payment is delayed  for 5 days',
                        style: textStyle16.copyWith(
                            color: const Color(0xffD90429)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: CustomPayButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Screen4(),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
