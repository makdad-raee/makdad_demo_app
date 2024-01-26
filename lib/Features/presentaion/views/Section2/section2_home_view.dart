import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/Section2/widgets/check_out_body.dart';
import 'package:makdad_demo_app/Features/presentaion/views/Section2/widgets/custom_appar2.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class Section2HomeView extends StatelessWidget {
  const Section2HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBarColor,
      body: Column(
        children: [
          CustomAppar2(),
          Expanded(child: CheckOutBody()),
          
        ],
      ),
    );
  }
}
