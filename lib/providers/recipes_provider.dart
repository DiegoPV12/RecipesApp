import 'package:flutter/material.dart';
import '../models/recipe_model.dart';

class FavoritesProvider with ChangeNotifier {
  final List<RecipeModel> _favorites = [];

  List<RecipeModel> get favorites => _favorites;

  void addFavorite(RecipeModel recipe) {
    _favorites.add(recipe);
    notifyListeners();
  }

  void removeFavorite(RecipeModel recipe) {
    _favorites.remove(recipe);
    notifyListeners();
  }
}
