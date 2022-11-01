import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/models/products.dart';

class ShopbandBuy extends StatelessWidget with _Utility {
  ShopbandBuy({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: kdefaultPaddin),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.cartShopping,
              color: product.color,
              size: iconSize,
              shadows: [Shadow(color: shadowCol, blurRadius: 15)],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: height,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(borderRadius: buttonRadius),
              backgroundColor: product.color,
              onPressed: () {},
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Utility {
  final double height = 50;
  final double iconSize = 30;
  final BorderRadius buttonRadius = BorderRadius.circular(18);
  final String buttonText = "Buy Now";
  final Color shadowCol = Colors.black38;
}
