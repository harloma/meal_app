import 'package:flutter/material.dart';
import 'package:meal_app/model/dummy_data.dart';
import './model/category_item.dart';

class CaterogiesScreen extends StatelessWidget {
  const CaterogiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.menu),
      //   ),
      //   shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.vertical(
      //     bottom: Radius.circular(5),
      //   )),
      //   backgroundColor: Theme.of(context).primaryColor,
      //   title: const Text(
      //     'FOODIE',
      //     style: TextStyle(
      //         fontSize: 25, fontFamily: 'Raleway', fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  title: catData.title,
                  id: catData.id,
                  color: catData.color,
                ))
            .toList(),
      ),
    );
  }
}
