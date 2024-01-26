import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/custom_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view.part2.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_home_view_part1.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_pay_button.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
        var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  const Scaffold(
      backgroundColor: appBarColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppar(),
            CustomHomeViewPart1(),
            TextScreen5(),
            
            
             
         
           
          ],
        ),
      ),
    );
  }
}
class TextScreen5 extends StatelessWidget {
  const TextScreen5({super.key});

  @override
  Widget build(BuildContext context) {
            var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
    return Container(
      color: defaultBackGroun,
      width: double.infinity,
      child: Column(
        children: [
           const Text(
            'Jam3yia Complted',
            style: textStyle20,
          ),
          SizedBox(
            height: height * 0.0247,
          ),
          Text('Payout wason 1/8/2023'),
         
          SizedBox(
            height: height * 0.0211,
          ),
          const Text('900.000 KWD', style: textStyle24),
          SizedBox(
            height: height * 0.04235,
          ),
          Container(color: Colors.white,
          height: height*0.078,)
          
              
        ],
      ),
    );;
  }
}