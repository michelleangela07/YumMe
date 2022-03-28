import 'package:flutter/material.dart';

import '../models/product.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    var constraints;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            // height: constraints.maxHeight * 0.75,
            // width: constraints.maxWidth,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(product.images[0], fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.title, style: const TextStyle(fontSize: 13),),
                  ],
                )
              ],
            )
          )
        ]
      )
    );
  }
}