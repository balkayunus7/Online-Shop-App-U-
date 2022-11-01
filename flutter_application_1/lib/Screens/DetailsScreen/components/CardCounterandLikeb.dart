import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        buildOutlinBut(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ktextColor),
          ),
        ),
        buildOutlinBut(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
        const SizedBox(width: 150),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.heartCirclePlus,
            color: _Utility().iconColor,
            size: _Utility().iconSize,
          ),
        ),
      ],
    );
  }

  SizedBox buildOutlinBut(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: _Utility().width,
      height: _Utility().height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: cardCountRad)),
        onPressed: press,
        child: Icon(icon, color: cardCountCol),
      ),
    );
  }
}

class _Utility {
  final double height = 32;
  final double width = 40;
  final double iconSize = 30;

  final Color iconColor = Colors.red;
}
