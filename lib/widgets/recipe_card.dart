import 'package:flutter/material.dart';

import '../Model/recipe.dart';

class BuildRecipeCard extends StatelessWidget {
  const BuildRecipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(height: 14.0),
            Text(
              recipe.label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
