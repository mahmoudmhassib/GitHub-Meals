import 'package:flutter/material.dart';
import 'package:mealapp/1.1%20dummy_data.dart';

import '../models/meal.dart';
import '../screens/ItemDetailsScreen.dart';

class MealItem extends StatelessWidget {
  var id;
  late var imageUrl;
  String title;
  int duration;
  Affordability affordability;
  Complexity complexity;
  MealItem(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.duration,
      required this.complexity,
      required this.affordability,

      });

  _selectmealdetails(ctx, var id, var title, var imageUrl) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) =>
            ItemDetailsScreen(id: id, title: title, imageUrl: imageUrl),
      ),
    );
  }

  String get selectcomplex {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      default:
        return 'unknown';
        break;
    }
  }

  String get selectAfford {
    switch (affordability) {
      case Affordability.affordability:
        return ' affordability';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'unknown';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectmealdetails(context, id, title, imageUrl);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: Image.network(imageUrl),
                ),
                Positioned(
                  bottom: 13,
                  right: 15,
                  child: Container(
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                      color: Colors.black26),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text('$selectcomplex'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text('${selectAfford}')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
