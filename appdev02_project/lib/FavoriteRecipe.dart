import 'package:flutter/material.dart';
import 'Recipe.dart';

class FavoriteRecipesPage extends StatelessWidget {
  final List<Recipe> favoriteRecipes;

  const FavoriteRecipesPage({Key? key, required this.favoriteRecipes})
      : super(key: key);


  @override
  Widget build(BuildContext context) {

    print('Number of favorite recipes: ${favoriteRecipes.length}');
    favoriteRecipes.forEach((recipe) {
      print('Recipe title: ${recipe.title}');
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteRecipes[index].title),
          );
        },
      ),
    );
  }
}