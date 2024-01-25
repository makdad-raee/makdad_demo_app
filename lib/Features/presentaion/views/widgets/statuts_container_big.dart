import 'package:flutter/material.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class StatusContainerBig extends StatelessWidget {
  const StatusContainerBig({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(defaultBadding),
      child: Container(
        width: double.infinity,
        height: height * 0.153,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          border: Border.all(
            color: const Color(0xff2B2D40),
          ),
          color: Colors.white,
        ),
        child:  Padding(
          padding: EdgeInsets.only(bottom: height*0.0411,left:width* 0.05,top: height*0.032,right:width* 0.08),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Status',style: textStyle16),
                  Spacer(),
                  Text('Pending',style: textStyle18),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text('Your Turn',style: textStyle16),
                  Spacer(),
                  Text('1',style: textStyle18),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
