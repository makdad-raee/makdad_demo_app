import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/custom_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/screen3.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view.part2.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view_part1.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_pay_button.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class HomeViewScreen2 extends StatelessWidget {
  const HomeViewScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: CustomScrollView(
        slivers: [
          const SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Column(
                  children: [
                    CustomAppar(),
                    CustomHomeViewPart1(),
                    CustomHomeViewPart2(
                      text: Text(
                        '20 days remaining for your payout!',
                        style: textStyle16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomPayButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
