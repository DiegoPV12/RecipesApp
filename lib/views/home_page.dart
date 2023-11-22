import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/recipes_data.dart';
import '../providers/recipes_provider.dart';
import '../widgets/navbar.dart';
import '../widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas de Cocina'),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: 0,
        navigationContext: context,
      ),
      body: ListView.builder(
        itemCount: sampleRecipes.length,
        padding: const EdgeInsets.all(30),
        itemBuilder: (context, index) {
          return RecipeCard(
            recipe: sampleRecipes[index],
            onFavoriteSwipe: () {
              favoritesProvider.addFavorite(sampleRecipes[index]);
            },
          );
        },
      ),
    );
  }
}
