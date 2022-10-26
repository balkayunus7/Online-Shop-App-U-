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

class CardCounter extends StatefulWidget {
  const CardCounter({super.key});

  @override
  State<CardCounter> createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  @override
  int numOfItems = 1;
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 30,
          child:
              OutlinedButton(onPressed: () {}, child: const Icon(Icons.remove)),
        )
      ],
    );
  }
}
