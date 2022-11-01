import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/products.dart';

class ColorsandSize extends StatelessWidget with _Utility {
  ColorsandSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                colorText,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              Row(children: [
                ColorDot(
                  color: colorDotBlue,
                  isSelected: true,
                ),
                ColorDot(
                  color: colorDotCof,
                ),
                ColorDot(
                  color: colorDotGrey,
                ),
              ]),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: ktextColor),
                  children: [
                TextSpan(text: "$sizeText\n"),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold))
              ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget with _Utility {
  ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });
  final Color color;
  final bool isSelected;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kdefaultPaddin / 4, right: kdefaultPaddin / 2),
      height: height,
      width: width,
      padding: colorDotPad,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : colorSelected,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

class _Utility {
  final EdgeInsets colorDotPad = const EdgeInsets.all(2.5);
  final double height = 24;
  final double width = 24;
  final Color colorSelected = Colors.transparent;
  final String colorText = "Color";
  final String sizeText = "Size";
}
