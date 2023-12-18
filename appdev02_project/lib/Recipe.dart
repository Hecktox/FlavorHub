import 'package:flutter/material.dart';
import 'thirdPage.dart';


class Recipe {
  final String id;
  final String title;
  final String videoUrl;

  Recipe({
    required this.id,
    required this.title,
    required this.videoUrl,
  });
}

List<Recipe> recipes = [
  Recipe(
    id: 'unique_recipe_id_1',
    title: 'Croissant Con Almendras',
    videoUrl: 'https://www.youtube.com/watch?v=0YVopYnTRRE',
  ),
];