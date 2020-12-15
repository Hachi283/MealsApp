import 'package:flutter/material.dart';
import 'package:mealsApp/models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final int duration;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    this.title,
    this.duration,
    this.imageUrl,
    this.complexity,
    this.affordability,
  });

  String get complexityText {
    switch (complexity) {
      case (Complexity.Simple):
        return 'Simple';
        break;
      case (Complexity.Challenging):
        return 'Challenging';
        break;
      case (Complexity.Hard):
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case (Affordability.Affordable):
        return 'Affordable';
        break;
      case (Affordability.Luxurious):
        return 'Expensive';
        break;
      case (Affordability.Pricey):
        return 'Pricey';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    width: 300,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.timer),
                    SizedBox(
                      width: 6,
                    ),
                    Text('$duration min'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(
                      width: 6,
                    ),
                    Text(complexityText),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(
                      width: 6,
                    ),
                    Text(affordabilityText),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
