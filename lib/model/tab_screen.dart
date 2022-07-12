import 'package:flutter/material.dart';
import 'package:meal_app/categories_screens.dart';
import 'package:meal_app/model/drawer.dart';
import 'package:meal_app/model/favories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('FOODIE'),
            bottom: const TabBar(
              //indicatorColor: Colors.amber,

              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favorites',
                )
              ],
            ),
          ),
          drawer: const MainDrawer(),
          body: const TabBarView(
            children: [
              CaterogiesScreen(),
              FavoriteScreen(),

            ],
          ),
        ));
  }
}
