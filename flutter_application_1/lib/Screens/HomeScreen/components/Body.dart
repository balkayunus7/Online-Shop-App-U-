// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/DetailsScreen/DetailsScreen.dart';
import 'package:flutter_application_1/Screens/HomeScreen/components/ItemCard.dart';
import "package:flutter_application_1/constants.dart";
import 'package:flutter_application_1/models/products.dart';
import 'Categories.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
          child: Text(
            mainTitle,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gridAxisCount,
                childAspectRatio: gridAspectRadio,
                mainAxisSpacing: kdefaultPaddin,
                crossAxisSpacing: kdefaultPaddin),
            itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    ))),
          ),
        ))
      ],
    );
  }
}
