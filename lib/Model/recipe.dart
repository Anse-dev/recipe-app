import 'package:flutter/material.dart';

import 'ingredient.dart';

//Recipe
class Recipe {
  int servings;
  List<Ingredient> ingredients;
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recipe> samples = [
    Recipe(
      "Soupe veloutée de potimarron et pommes de terre",
      "assets/images/dambou-couscous-aux-epinards.jpg",
      4,
      [
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
      ],
    ),
    Recipe(
      "Foufou de banane",
      "assets/images/foufou-de-banane.jpg",
      4,
      [
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
      ],
    ),
    Recipe(
      "Bonava ou ragoût d'agneau mauritanien",
      "assets/images/bonava-ou-ragout-d-agneau-mauritanien.jpg",
      4,
      [
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
        Ingredient(1, "box", "example"),
      ],
    ),
  ];
}
