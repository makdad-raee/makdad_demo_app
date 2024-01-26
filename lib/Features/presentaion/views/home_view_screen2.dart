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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppar(),
            const CustomHomeViewPart1(),
            const CustomHomeViewPart2(
                text: Text('20 days remaining for your payout!',style: textStyle16,),),
            CustomPayButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Screen3(),
                ));
              },
            ),
          
             Container(
              color: Colors.white,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
