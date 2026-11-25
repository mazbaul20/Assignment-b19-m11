import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../core/app_colors.dart';
import '../../../core/recipe.dart';
import '../../../data/recipe_data.dart';
import 'widget/recipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Recipe> recipes = [];

  @override
  void initState() {
    super.initState();
    loadRecipes();
  }

  void loadRecipes() {
    final Map<String, dynamic> decodedData = jsonDecode(recipeJson);

    final List<dynamic> recipeList = decodedData['recipes'];

    setState(() {
      recipes = recipeList.map((item) => Recipe.fromJson(item)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Recipes"),
        backgroundColor: AppColors.backgroundDark,
        foregroundColor: AppColors.cardSurface,
      ),

      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: recipes.length,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          itemBuilder: (context, index) {
            return RecipeCard(recipe: recipes[index]);
          },
        ),
      ),
    );
  }
}
