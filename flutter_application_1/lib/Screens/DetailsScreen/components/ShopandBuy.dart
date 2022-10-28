import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/models/products.dart';

class ShopbandBuy extends StatelessWidget {
  const ShopbandBuy({
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
              size: 30,
              shadows: const [Shadow(color: Colors.black38, blurRadius: 15)],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              backgroundColor: product.color,
              onPressed: () {},
              child: Text(
                "Buy Now",
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
