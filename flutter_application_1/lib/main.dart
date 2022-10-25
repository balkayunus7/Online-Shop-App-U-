import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/MainScreen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      theme: ThemeData().copyWith(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: ktextColor),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
          )),
      home: const MainScreen(),
    );
  }
}
