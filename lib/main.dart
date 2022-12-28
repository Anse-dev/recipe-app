import 'package:flutter/material.dart';
import 'package:recipes_app/Model/recipe.dart';
import 'package:recipes_app/screens/recipe_detail.dart';
import 'package:recipes_app/screens/home.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.dark(),
      ),
      home: const MyHomePage(title: 'Recipe App'),
    );
  }
}
