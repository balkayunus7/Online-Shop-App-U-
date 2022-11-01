import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_application_1/constants.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexColorintro,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin * 2),
            child: Text(
              introTitle2,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: introColor, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 300,
            alignment: Alignment.center,
            child: Lottie.network(lottie2link, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kdefaultPaddin, vertical: kdefaultPaddin),
            child: Text(
              dummyText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: introColor, fontWeight: FontWeight.w400),
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
