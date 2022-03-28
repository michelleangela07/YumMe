import 'package:flutter/material.dart';
import 'package:yumme_app/screens/categories/veggies/components/body_veggies.dart';
// import 'dart:js';

class CategoriesVeggies extends StatelessWidget {
  static String routeName = "/catveggies";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veggies"),
      ),
      body: BodyVeggies(),
    );
  }
}
