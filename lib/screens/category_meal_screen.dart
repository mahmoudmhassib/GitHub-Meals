import 'package:flutter/material.dart';
import 'package:mealapp/1.1%20dummy_data.dart';
import 'package:mealapp/models/category.dart';

import '../models/meal.dart';
import '../widgets/MealItem.dart';

class CategoryMealScreen extends StatefulWidget {
  late String id;  //id have been Category(Dummy_Category)
  late String title; //title come from Category(Dummy_Category)

  CategoryMealScreen({required this.id, required this.title});

  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {

  @override
  Widget build(BuildContext context) {
    var displayMeals =
    DUMMY_MEALS.where((val) => val.categories.contains(widget.id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: displayMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
            id: displayMeals[index].id,
            imageUrl: displayMeals[index].imageUrl,
            title: displayMeals[index].title,
            duration: displayMeals[index].duration,
            affordability: displayMeals[index].affordability,
            complexity: displayMeals[index].complexity,

          );
        },
      ),
    );
  }
}
