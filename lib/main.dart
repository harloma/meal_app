import 'package:flutter/material.dart';
import 'package:meal_app/model/category_meals_screen.dart';
import 'package:meal_app/model/filters_screen.dart';
import 'package:meal_app/model/meal_details.dart';
import 'package:meal_app/model/tab_screen.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal',
      //home: const TabsScreen(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          hintColor: Colors.amber,
          canvasColor: const Color.fromRGBO(
            225,
            254,
            229,
            1,
          ),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
              titleMedium: const TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.normal
              )

          )
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabsScreen(),
        FiltersScreen.routeName: (ctx) =>  const FiltersScreen( ),
        CategoryMealScreen.routeName: (ctx) =>  const CategoryMealScreen(),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen()
      },
    );
  }
}






