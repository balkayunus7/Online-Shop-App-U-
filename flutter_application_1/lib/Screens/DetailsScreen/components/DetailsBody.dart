import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/ColorsandSize.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/ProductTitleandImage.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/Description.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kdefaultPaddin,
                      right: kdefaultPaddin),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorsandSize(product: product),
                      DecriptionWidget(product: product),
                      const CardCounter(),
                    ],
                  ),
                ),
                ProductTitleandImageWidget(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardCounter extends StatefulWidget {
  const CardCounter({super.key});

  @override
  State<CardCounter> createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  @override
  int numOfItems = 1;

  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinBut(icon: Icons.remove, press: () {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
          child: Text(
            "01",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ktextColor),
          ),
        ),
        buildOutlinBut(icon: Icons.add, press: () {}),
      ],
    );
  }

  SizedBox buildOutlinBut(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: press,
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
