import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/custom_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_body_under_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/statuts_container_big.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppar(),
          CustomBodyUnderAppar(),
          StatusContainerBig(),
        ],
      ),
    );
  }
}
