import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:flutter_application_1/constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: itemCardDec(),
              child: Image.asset(
                product.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin / 4),
            child: Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: ktextLightColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin / 10),
            child: Text(
              "\$" + product.price.toString(),
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: ktextColor),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration itemCardDec() {
    return BoxDecoration(color: product.color, borderRadius: itemCardradius);
  }
}
