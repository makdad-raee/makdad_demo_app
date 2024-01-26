import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_details.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_red_button.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class CustomBodyUnderAppar extends StatelessWidget {
  const CustomBodyUnderAppar({super.key, this.amberButton});
  final Widget? amberButton;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Jam3yia Title', style: textStyle22),
          const Text('Public', style: textStyle20),
          const Text(
            'Payout Will Be On 1/8/2023',
            style: textStyle20,
          ),
          SizedBox(
            height: height * 0.024,
          ),
          Row(
            children: [
              CustomRedButtonAndAmber(height: height, width: width,),
              Spacer(),
              amberButton??const SizedBox(width: 1,),
            ],
          ),
          SizedBox(
            height: height * 0.027,
          ),
          const CustomDetails()
        ],
      ),
    );
  }
}
