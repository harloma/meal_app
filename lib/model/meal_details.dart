import 'package:flutter/material.dart';
import 'dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({Key? key}) : super(key: key);

  static const routeName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments.toString();
    final selectedMeals = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        /**/
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(selectedMeals.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                child: Image.network(
                  selectedMeals.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ingredients',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              Container(
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   border: Border.all(color: Colors.grey),
                //   borderRadius: BorderRadius.circular(10)
                // ),
                height: 180,
                width: 300,
                child: ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                    color: Colors.amber,
                    child: Text(selectedMeals.ingredients[index]),
                  ),
                  itemCount: selectedMeals.ingredients.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Steps',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Container(
                height: 400,
                width: 300,
                child: ListView.builder(
                  itemBuilder: (ctx, index) => ListTile(
                    leading: CircleAvatar(
                      child: Text('#${index + 1}'),

                    ),
                    title: Text(selectedMeals.steps[index]),
                  ),
                  itemCount: selectedMeals.steps.length,
                ),


              )

            ],
          ),
        ));
  }
}
