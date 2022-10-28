import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:flutter_application_1/constants.dart';

class DecriptionWidget extends StatelessWidget {
  const DecriptionWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kdefaultPaddin),
      child: Text(
        product.description,
        style:
            Theme.of(context).textTheme.labelLarge?.copyWith(color: ktextColor),
      ),
    );
  }
}
