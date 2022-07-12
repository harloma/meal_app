import 'package:flutter/material.dart';

import 'filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);


  Widget buildListTile(String title, IconData icon,  Function() tapHandler) {
    return ListTile(
        leading:
         Icon(icon,
        size: 26,),
        title: Text(title,
          style: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold),),
        onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme
                .of(context)
                .hintColor,
            height: 140,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Cooking up',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 20,

          ),
          buildListTile('Meals', Icons.restaurant, () {
           Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Filter', Icons.settings, (){
           Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          })
        ],
      ),
    );
  }
}