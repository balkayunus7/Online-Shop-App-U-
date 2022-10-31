import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexColorintro,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            introTitle1,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 350,
            alignment: Alignment.center,
            child: Lottie.network(lottie1link,
                frameRate: FrameRate.max, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kdefaultPaddin,
            ),
            child: Text(
              dummyText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            height: 200,
          )
        ],
      ),
    );
  }
}
