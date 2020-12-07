import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  // final String id;
  // final String title;

  // CategoryMealScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final title = routeArgs['title'];
    final id = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Recipe page!'),
      ),
    );
  }
}
