import 'package:flutter/material.dart';
import '../1.1 dummy_data.dart';
import '../models/meal.dart';
import 'category_meal_screen.dart';
class CategoryScreen extends StatefulWidget {

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  _selectCategoryItem(BuildContext ctx,String title,String id,) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx)=>CategoryMealScreen(title:title ,id: id))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
            padding: EdgeInsets.all(15),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3 / 2,
            ),
            children: DUMMY_CATEGORIES
                .map(
                  (val) =>
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: val.color,
                      gradient: LinearGradient(
                        colors: [val.color,Colors.green],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        _selectCategoryItem(context, val.title,val.id);
                      },
                      splashColor: Colors.pink,
                      borderRadius: BorderRadius.circular(20),
                      child: Text(
                        val.title,
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'RobotoCondensed'),
                      ),
                    ),
                  ),
            )
                .toList()),
    );
  }
}
