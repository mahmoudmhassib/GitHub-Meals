import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';

import '../1.1 dummy_data.dart';
import '../widgets/mealdetails.dart';
class ItemDetailsScreen extends StatefulWidget {

  var id;
  var title;
  var imageUrl;
  ItemDetailsScreen({required this.id,required this.title,required this.imageUrl,});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  List<Meal> _favoriteMeals=[];
  toggle(String id){
    final existIndex=_favoriteMeals.indexWhere((meal) =>meal.id==id );
    if(existIndex>=0){
      setState(() {
        _favoriteMeals.removeAt(existIndex);
      });
    }else{
      setState(() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) =>meal.id ==id));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var selectmeal=DUMMY_MEALS.firstWhere((meal) => meal.id==widget.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: MealDetails(
          imageUrl:widget.imageUrl ,
          id: widget.id,
          title: widget.title,
          ingredients: selectmeal.ingredients,
          steps: selectmeal.steps,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.of(context).pop(widget.id);},
        child: Icon(Icons.delete),
      ),
    );
  }
}


