import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_body_under_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/statuts_container_big.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class CustomHomeViewPart1 extends StatelessWidget {
  const CustomHomeViewPart1({super.key, this.amberButton});
  final Widget? amberButton;

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
                color: defaultBackGroun,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBodyUnderAppar(amberButton:amberButton??const SizedBox(height: 1,) ,),
          const StatusContainerBig(),
        ],
      ),
    );
  }
}
