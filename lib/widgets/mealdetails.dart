import 'package:flutter/material.dart';
class MealDetails extends StatelessWidget {
  var id;
  var title;
  var imageUrl;
  var ingredients;
  var steps;

  MealDetails(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.steps,
      required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.network(imageUrl),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'ingredients:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: ingredients.length,
              itemBuilder: (ctx, index) {
                return Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10),
                    child: Text(ingredients[index]),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Steps:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color:Colors.white,
              border: Border.all(color: Colors.black26, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              itemCount: steps.length,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('${index+1}#'),
                      ),
                      title: Text(steps[index]),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
