import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'components/Body.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: HexColor("#fabe9c"),
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_outlined),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: ktextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: ktextColor,
          ),
        ),
      ],
    );
  }
}
