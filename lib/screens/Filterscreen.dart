import 'package:flutter/material.dart';

import '../1.1 dummy_data.dart';
import '../models/meal.dart';
import '../widgets/drawerApp.dart';

class FilterScreen extends StatefulWidget {
 /*late var saveFilter;
 late Map<String,bool> filter;*/

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _GlutenFree = false;
  bool _Vegan = false;
  bool _Vegetarian = false;
  bool _LactoseFree = false;

  buildswitch(String title, String subtitle, bool currentvalue, var updatevalue) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 22),
      ),
      subtitle: Text(subtitle),
      value: currentvalue,
      onChanged:updatevalue,
    );
  }
  @override

  /*void initState() {
   _GlutenFree = widget.filter['gluten']!;
  _Vegan = widget.filter['vegan']!;
  _Vegetarian = widget.filter['vegetrian']!;
   _LactoseFree = widget.filter['lactose']!;
    super.initState();
  }*/
  List<Meal> availablemeal=DUMMY_MEALS;
  /*Map<String,bool> _filter={
    'gluten':false,
    'vegan':false,
    'vegetarian':false,
    'lactose':false,
  };*/
  /*setFilter(Map<String,bool> _filterData){
    setState(() {
      _filter=_filterData;
      availablemeal=DUMMY_MEALS.where((meal) {
        if(_filter['gluten']! && meal.isGlutenFree) {
          return false;
        }
        if(_filter['vegan']! && meal.isVegan) {
          return false;
        }
        if(_filter['vegetarian']! && meal.isVegetarian) {
          return false;
        }
        if(_filter['lactose']! && meal.isLactoseFree) {
          return false;
        }
        return true;
      } ).toList();
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: [
          IconButton(
              onPressed: () {
                Map<String, bool> selectfilter = {
                  'gluten': _GlutenFree,
                  'vegan': _Vegan,
                  'vegetarian': _Vegetarian,
                  'lactose': _LactoseFree,
                };
              //  widget.saveFilter(selectfilter);
              },
              icon: Icon(Icons.save))
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Center(
                child: Text(
              'Adjust yout meal selection ',
              style: TextStyle(color: Colors.black, fontSize: 30),
            )),
          ),
          SizedBox(height: 8),
          buildswitch(
              'Gluten Free', 'Only include Gluten Free meals', _GlutenFree,
              (value) {
            setState(() {
              _GlutenFree = value;
            });
          }),
          buildswitch(' Vegan Free', 'Only include Vegan Free meals', _Vegan,
              (value) {
            setState(() {
              _Vegan = value;
            });
          }),
          buildswitch('Vegetarian Free ', 'Only include Vegetarian Free meals',
              _Vegetarian, (value) {
            setState(() {
              _Vegetarian = value;
            });
          }),
          buildswitch(
              'Lactose Free', 'Only include Lactose Free  meals', _LactoseFree,
              (value) {
            setState(() {
              _LactoseFree = value;
            });
          }),
        ],
      ),
    );
  }
}
