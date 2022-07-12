import 'package:flutter/material.dart';
import 'package:meal_app/model/dummy_data.dart';
import 'package:meal_app/model/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {

  static const routeName = '/category-meals';


  const CategoryMealScreen( {Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute
        .of(context)?.settings
        .arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
          title: Text(categoryTitle!)
      ),
      body: ListView.builder(itemBuilder: (cxt, index) {
        return MealItem(title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability, id: categoryMeals[index].id,);
      }, itemCount: categoryMeals.length,
      ),
    );
  }
}
