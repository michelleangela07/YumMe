import 'package:flutter/material.dart';
import 'package:yumme_app/components/product_card.dart';
import 'package:yumme_app/models/product.dart';
import 'package:yumme_app/models/recipe.dart';
import 'package:yumme_app/screens/categories/drinks/components/categories_card.dart';

import '../../../../size_config.dart';

class BodyDrinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding:
        //       EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        //   // child: SectionTitle(title: "Meat", press: () {}),
        // ),
        Image.asset("assets/images/banner_1.png"),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(5),
            ),
            child: GridView.builder(
              itemCount: drinksRecipe.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                if (drinksRecipe[index].isDrinksCat)
                  return CategoriesCard(
                    drinksrecipe: drinksRecipe[index],
                    press: () {},
                    // press: () => Navigator.pushNamed(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailScreen(
                    //       product: dataProduct[index],
                    //     ),
                    //   ),
                    // ),
                  );

                return SizedBox
                    .shrink(); // here by default width and height is 0
              },
            ),
          ),
        )
      ],
    );
  }
}
