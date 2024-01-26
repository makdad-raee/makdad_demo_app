import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/Section2/widgets/check_out_body.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_pay_button.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height * 0.3517,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Payment Details',
            style: textStyle18,
          ),
          SizedBox(
            height: height * 0.0247,
          ),
          const Row(
            children: [
              Text(
                'Jam3yia Amount',
                style: textStyle14,
              ),
              Spacer(),
              Text(
                '100.000 KWD',
                style: textStyle14,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.0247,
          ),
          const Row(
            children: [
              Text(
                'Transaction Fee',
                style: textStyle14,
              ),
              Spacer(),
              Text(
                '1.500 KWD',
                style: textStyle14,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.0247,
          ),
          const Row(
            children: [
              Text(
                'Total',
                style: textStyle14,
              ),
              Spacer(),
              Text(
                '101.500 KWD',
                style: textStyle14,
              ),
            ],
          ),
          const SizedBox(height: 14,),
          const CheckOutButton(),
          
        ],
      ),
    );
  }
}
