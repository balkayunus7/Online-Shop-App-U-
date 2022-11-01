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
                  decoration: detaBackContDec(),
                  child: Column(
                    children: [
                      ColorsandSize(product: product),
                      DecriptionWidget(product: product),
                      Spacer(),
                      CardCounter(),
                      Spacer(),
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

  BoxDecoration detaBackContDec() {
    return const BoxDecoration(
        color: detaBackContCol,
        borderRadius: BorderRadius.only(
            topLeft: detaBodycontRadius, topRight: detaBodycontRadius));
  }

  SizedBox Spacer() {
    return const SizedBox(
      height: 30,
    );
  }
}
