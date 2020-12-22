import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String id;
  // final String title;

  // CategoryMealScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final id = routeArgs['id'];
    final categoryMeal = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeal[index].id,
            title: categoryMeal[index].title,
            duration: categoryMeal[index].duration,
            imageUrl: categoryMeal[index].imageUrl,
            affordability: categoryMeal[index].affordability,
            complexity: categoryMeal[index].complexity,
          );
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
