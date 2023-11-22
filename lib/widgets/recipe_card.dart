import 'package:flutter/material.dart';
import '../models/recipe_model.dart';
import '../views/recipe_details_page.dart';

class RecipeCard extends StatelessWidget {
  final RecipeModel recipe;
  final VoidCallback onFavoriteSwipe;

  const RecipeCard({
    super.key,
    required this.recipe,
    required this.onFavoriteSwipe,
  });

  @override
  Widget build(BuildContext context) {
 return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Dismissible(
        key: Key(recipe.id),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction) async {
          onFavoriteSwipe(); 
          return false; 
        },
        background: Container(
          color: Colors.green[200], 
          alignment: Alignment.centerRight,
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.favorite, color: Colors.white),
          ),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                recipe.imageUrl,
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  recipe.title,
                  style: TextStyle(fontSize: 24, color: Colors.grey[800]),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  recipe.category,
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailPage(recipe: recipe),
                      ),
                    );
                  },
                  child: const Text('Ver Receta'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
