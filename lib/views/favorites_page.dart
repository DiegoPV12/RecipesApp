import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/recipe_model.dart';
import '../providers/recipes_provider.dart';
import '../widgets/navbar.dart';
import '../widgets/recipe_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final List<RecipeModel> favoriteRecipes = favoritesProvider.favorites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas Favoritas'),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: 1,
        navigationContext: context,
      ),
      body: favoriteRecipes.isEmpty
          ? const Center(child: Text('No hay recetas favoritas.'))
          : ListView.builder(
              itemCount: favoriteRecipes.length,
              padding: const EdgeInsets.all(30),
              itemBuilder: (context, index) {
                return RecipeCard(
                  recipe: favoriteRecipes[index],
                  onFavoriteSwipe: () {
                    favoritesProvider.removeFavorite(favoriteRecipes[index]);
                  },
                );
              },
            ),
    );
  }
}
