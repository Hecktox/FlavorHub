import 'package:flutter/material.dart';
import 'Recipe.dart';
import 'FavoriteRecipe.dart';

class RecipeDisplayPage extends StatelessWidget {
  final List<Recipe> favoriteRecipes; // Assuming you have a list of favorited recipes

  const RecipeDisplayPage({Key? key, required this.favoriteRecipes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Recipes'),
      ),
      body: ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(recipe: favoriteRecipes[index]),
                ),
              );
            },
            child: Card(
              child: ListTile(
                title: Text(favoriteRecipes[index].title),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ],
        ),
      ),
    );
  }
}
