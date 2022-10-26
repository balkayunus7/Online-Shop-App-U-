import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/ProductTitleandImage.dart';
import 'package:flutter_application_1/models/products.dart';

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
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      Text(
                        "cvhsfvsv",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(color: Colors.black),
                      )
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
