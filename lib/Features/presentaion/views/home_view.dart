import 'package:flutter/material.dart';
import 'package:makdad_demo_app/Features/presentaion/views/custom_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/home_view_screen2.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/custom_body_under_appbar.dart';
import 'package:makdad_demo_app/Features/presentaion/views/widgets/statuts_container_big.dart';
import 'package:makdad_demo_app/core/utlies/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff2B2D40),
      body: FirstScreenBody(),
    );
  }
}

class FirstScreenBody extends StatelessWidget {
  const FirstScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppar(history: false),
        Container(
            decoration: const BoxDecoration(
                color: defaultBackGroun,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: const CustomBodyUnderAppar()),
        Container(color: defaultBackGroun, child: const StatusContainerBig()),
        Expanded(
          child: Container(
            width: double.infinity,
            color: defaultBackGroun,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomeViewScreen2(),
                ));
              },
              child: Center(
                  child: Container(
                      color: Colors.red,
                      child: const Text(
                        'NextScreen',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ))),
            ),
          ),
        )
      ],
    );
  }
}
