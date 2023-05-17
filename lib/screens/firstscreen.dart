import 'package:flutter/material.dart';
import 'package:mealapp/screens/CategoryScreen.dart';
import 'package:mealapp/widgets/drawerApp.dart';
import '../1.1 dummy_data.dart';
import '../models/meal.dart';
import 'FavouriteItem.dart';
class TabScreen extends StatefulWidget {

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

 final  List<Map<String,dynamic>> _page=[
    {'page':CategoryScreen(),'title':'category',},
    {'page':FavouriteItem(),'title':'favourite',},
  ];
  var pageindex=0;

  _selectpage(int value){
    setState(() {
      pageindex=value;
    });
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        title: Text(_page[pageindex]['title']),
      ),
      body: _page[pageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: pageindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'category'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'favourite'),
        ],
      ),
    );
  }
}


