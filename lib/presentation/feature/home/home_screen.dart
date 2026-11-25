import 'dart:convert';
import 'package:assignment_b19_m11/core/recipe.dart';
import 'package:assignment_b19_m11/presentation/feature/home/widget/recipe_card.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/recipe_data.dart';

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
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10, left: 8, right: 8),
              child: RecipeCard(recipe: recipes[index]),
            );
          },
        ),
      ),
    );
  }
}
