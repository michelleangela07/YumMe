import 'package:flutter/material.dart';
import 'package:yumme_app/screens/categories/seafood/components/body_seafood.dart';

class CategoriesSeafood extends StatelessWidget {
  static String routeName = "/catseafood";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seafood"),
      ),
      body: BodySeafood(),
    );
  }
}
