import 'package:flutter/material.dart';
import '../models/recipe_model.dart';

class RecipeDetailPage extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              recipe.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                recipe.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            _buildSectionCard(context, 'Ingredientes', recipe.ingredients),
            _buildSectionCard(context, 'Pasos',
                recipe.steps.map((step) => '- $step').toList()),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard(
      BuildContext context, String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ...items
                  .map((item) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(item),
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
