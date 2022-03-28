import 'package:flutter/material.dart';
import 'package:yumme_app/screens/categories/dessert/components/body_dessert.dart';

class CategoriesDessert extends StatelessWidget {
  static String routeName = "/catdessert";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dessert"),
      ),
      body: BodyDessert(),
    );
  }
}
