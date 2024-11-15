import 'package:flutter/material.dart';
import 'package:my_basketball_app/Screens/my_home_page.dart';

void main() {
  runApp(const MyBasketbaLLPointsCounterAPP());
}

class MyBasketbaLLPointsCounterAPP extends StatelessWidget {
  const MyBasketbaLLPointsCounterAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
