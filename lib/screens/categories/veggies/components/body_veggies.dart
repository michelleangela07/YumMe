import 'package:flutter/material.dart';
import 'package:yumme_app/components/product_card.dart';
import 'package:yumme_app/models/product.dart';
import 'package:yumme_app/models/recipe.dart';
import 'package:yumme_app/screens/categories/veggies/components/categories_card.dart';

import '../../../../size_config.dart';

class BodyVeggies extends StatelessWidget {
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
              itemCount: veggiesRecipe.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                if (veggiesRecipe[index].isVeggiesCat)
                  return CategoriesCard(
                    veggiesrecipe: veggiesRecipe[index],
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

    // return Column(
    //   children: [
    //     Padding(
    //       padding:
    //           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
    //       // child: SectionTitle(title: "Meat", press: () {}),
    //     ),
    //     Image.asset("assets/images/banner_1.png"),
    //     SizedBox(height: getProportionateScreenWidth(20)),
    //     Expanded(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(
    //           horizontal: getProportionateScreenWidth(20),
    //           vertical: getProportionateScreenWidth(5),
    //         ),
    //         child: GridView.builder(
    //           itemCount: dataProduct.length,
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 2, childAspectRatio: 0.75),
    //           itemBuilder: (context, index) {
    //             if (dataProduct[index].isMeatCat)
    //               return CategoriesCard(
    //                 product: dataProduct[index],
    //                 press: () {},
    //                 // press: () => Navigator.pushNamed(
    //                 //   context,
    //                 //   MaterialPageRoute(
    //                 //     builder: (context) => DetailScreen(
    //                 //       product: dataProduct[index],
    //                 //     ),
    //                 //   ),
    //                 // ),
    //               );

    //             return SizedBox
    //                 .shrink(); // here by default width and height is 0
    //           },
    //         ),
    //       ),
    //     )
    //   ],
    // );

    // return GridView.count(
    //   crossAxisCount: 2,
    //   mainAxisSpacing: 10,
    //   crossAxisSpacing: 10,
    //   padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
    //   childAspectRatio: 0.73,
    //   children: [
    //     ...List.generate(
    //       dataProduct.length,
    //       (index) {
    //         if (dataProduct[index].isMeatCat)
    //           return CategoriesCard(product: dataProduct[index]);

    //         return SizedBox.shrink(); // here by default width and height is 0
    //       },
    //     ),
    //   ],
    // );
  }
}
