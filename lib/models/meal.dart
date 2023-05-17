 class Meal{
   String id;
  List categories;
  String title;
  Affordability affordability;
  Complexity complexity;
  late var imageUrl;
  int duration;
  List ingredients;
  List steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool  isLactoseFree;
 Meal({
  required this.id,
  required this.categories,
  required this.title,
   required this.affordability,
  required this.complexity,
  required this.imageUrl,
  required this.duration,
  required this.ingredients,
  required this.steps,
  required this.isGlutenFree,
  required this.isVegan,
  required this.isVegetarian,
  required this.isLactoseFree,
});
}

enum Complexity {
   Simple,
   Hard,
   Challenging,
}

enum Affordability {

    affordability,
    Pricey,
    Luxurious,

}