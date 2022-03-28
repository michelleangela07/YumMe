import 'package:flutter/material.dart';
import 'package:yumme_app/models/recipe.dart';
import 'package:yumme_app/screens/categories/dessert/components/categories_card.dart';

import '../../../../size_config.dart';

class BodyDessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/banner_1.png"),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(5),
            ),
            child: GridView.builder(
              itemCount: dessertRecipe.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                if (dessertRecipe[index].isDessertCat)
                  return CategoriesCard(
                    dessertrecipe: dessertRecipe[index],
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
