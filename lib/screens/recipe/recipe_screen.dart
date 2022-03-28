import 'package:flutter/material.dart';
import 'package:yumme_app/components/custom_bottom_nav_bar.dart';
import 'package:yumme_app/enums.dart';

import 'components/body.dart';

class RecipeScreen extends StatelessWidget {
  static String routeName = "/recipe";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.recipe),
    );
  }
}
