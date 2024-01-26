import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/Section2/widgets/payment_details.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_pay_button.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xffF8FAFD),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jam3yia Title',
                  style: textStyle22.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 19,
                ),
                const PaymentDetails(),
              ],
            ),
          ),
          const Spacer(),
          CustomPayButton(
            onTap: () {},
            text: Text(
              'Pay Now',
              style: textStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff2B2D40),
          borderRadius: BorderRadius.circular(12)),
      height: height * 0.1176,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Payment Method',
            style: textStyle18.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text('Online', style: textStyle18.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
