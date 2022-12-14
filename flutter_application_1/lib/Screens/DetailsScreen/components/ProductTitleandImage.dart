import 'package:flutter/material.dart';
import "package:flutter_application_1/models/products.dart";
import 'package:flutter_application_1/constants.dart';

class ProductTitleandImageWidget extends StatelessWidget {
  const ProductTitleandImageWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detaMainTitle,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: detaTextCol, fontWeight: FontWeight.w500),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: detaTextCol, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(text: "$detaPriceLabel\n"),
                  TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: detaTextCol, fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              const SizedBox(width: kdefaultPaddin),
              Expanded(
                  child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ))
            ],
          )
        ],
      ),
    );
  }
}
