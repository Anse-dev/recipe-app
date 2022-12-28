import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:recipes_app/Model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Recipe Detail"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300.0,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ),
            const SizedBox(height: 4),
            Text(widget.recipe.label),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                      "${ingredient.quantity} ${ingredient.measure} ${ingredient.name}");
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.black,
              inactiveColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
