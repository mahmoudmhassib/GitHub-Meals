import 'package:flutter/material.dart';
import 'package:mealapp/screens/Filterscreen.dart';
import 'package:mealapp/screens/firstscreen.dart';

import '../1.1 dummy_data.dart';
import '../models/meal.dart';

class DrawerApp extends StatefulWidget {
  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  x(String title, IconData icon, var press) {
    return ListTile(
      onTap: press,
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }


  _selectFilter(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx)=>FilterScreen())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            color: Colors.deepOrange,
            child: Center(
                child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontSize: 40,
                color: Theme.of(context).accentColor,
              ),
            )),
          ),
          Divider(),
          x('Meal', Icons.restaurant, () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => TabScreen(),
              ),
            );
          }),
          Divider(),
          x('Filters', Icons.settings,
              (){
            _selectFilter(context);
          }   ),
        ],
      ),
    );
  }
}
