import 'package:flutter/material.dart';
import 'package:yumme_app/models/product.dart';
import 'package:yumme_app/models/recipe.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
// import '../constants.dart';
// import '../size_config.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    // this.width = 140,
    // this.aspectRetio = 1.02,
    @required this.product,
    this.press,
    this.veggiesrecipe,
  }) : super(key: key);

  // final double width, aspectRetio;
  final Product? product;
  final VeggiesRecipe? veggiesrecipe;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            veggiesrecipe!.images[0],
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          veggiesrecipe!.title,
          style: TextStyle(color: Colors.black),
          maxLines: 2,
        ),
      ],
    );

    // return LayoutBuilder(builder: (context, constraints) {
    //   return Container(
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: const BorderRadius.all(Radius.circular(15)),
    //       boxShadow: [
    //         BoxShadow(
    //           blurRadius: 7,
    //           color: Colors.black.withOpacity(0.15),
    //           offset: const Offset(5, 5),
    //           spreadRadius: 0,
    //         ),
    //       ],
    //     ),
    //     child: Column(
    //       children: [
    //         //gambar
    //         Container(
    //           height: constraints.maxHeight * 0.75,
    //           width: constraints.maxWidth,
    //           child: ClipRRect(
    //             borderRadius: const BorderRadius.only(
    //               topLeft: Radius.circular(15),
    //               topRight: Radius.circular(15),
    //             ),
    //             child: Image.asset(
    //               product!.images[0],
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),
    //         //text
    //         // Column(
    //         //   crossAxisAlignment: CrossAxisAlignment.start,
    //         //   children: [
    //         //     Text(product.name),
    //         //   ],
    //         // ),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 5, right: 5, top: 7),
    //           child: Container(
    //             child: Center(
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     product!.title,
    //                     style: TextStyle(color: Colors.black),
    //                     maxLines: 2,
    //                   ),
    //                   // Icon(Icons.star_border, size: 20, color: Colors.yellow),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // });
  }
}
