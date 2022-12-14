import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';
import 'components/DetailsBody.dart';
import "package:flutter_application_1/constants.dart";

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: appBarMethod(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar appBarMethod(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
          color: detaScrIconCol,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: detaScrIconCol,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: detaScrIconCol,
          ),
        ),
      ],
    );
  }
}
