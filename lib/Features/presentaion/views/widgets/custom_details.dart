import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/icon_with_details.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Row(
          children: [
            IconWIthDetailsItem(
              icon: Icons.calendar_month,
              txt: 'Start Date',
              date: '19/01/2023',
            ),
            Spacer(),
            IconWIthDetailsItem(
              icon: Icons.calendar_month,
              txt: 'End Date',
              date: '11/01/2023',
            ),
          ],
        ),
        SizedBox(
          height: height * 0.05,
        ),
        const Row(
          children: [
            IconWIthDetailsItem(
              icon: Icons.calendar_month,
              txt: 'Monthly',
              date: '100 KWD',
            ),
            Spacer(),
            IconWIthDetailsItem(
                icon: Icons.calendar_month, txt: 'Payout', date: '900.000 KWD'),
          ],
        ),
      ],
    );
  }
}