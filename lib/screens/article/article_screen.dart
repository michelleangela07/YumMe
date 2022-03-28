import 'package:flutter/material.dart';
import 'package:yumme_app/components/custom_bottom_nav_bar.dart';
import 'package:yumme_app/enums.dart';
import 'package:yumme_app/size_config.dart';

import 'components/body.dart';

class ArticleScreen extends StatelessWidget {
  static String routeName = "/article";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.article),
    );
  }
}