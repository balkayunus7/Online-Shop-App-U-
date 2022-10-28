import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/CardCounterandLikeb.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/ColorsandSize.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/ProductTitleandImage.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/components/ShopandBuy.dart';
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
                      const SizedBox(
                        height: 20,
                      ),
                      const CardCounter(),
                      const SizedBox(
                        height: 35,
                      ),
                      ShopbandBuy(product: product)
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
