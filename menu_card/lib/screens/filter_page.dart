import 'package:flutter/material.dart';
import 'package:menu_card/screens/my_home_page.dart';
import 'package:get/get.dart';
import '../my_widgets/my_widgets.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.filters});
  final Map<String, bool> filters;
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  static bool isGlutenFree = false;
  static bool isLactoseFree = false;
  static bool isVegetarian = false;
  static bool isVegan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(MyHomePage(filters: {
              'glutenFree': isGlutenFree,
              'lactoseFree': isLactoseFree,
              'vegetarian': isVegetarian,
              'vegan': isVegan,
            },));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text('Filters'),
      ),
      body: Column(
        children: [
          mySwitchTile(
            'Gluten-free',
            'Only include gluten-free meals.',
            isGlutenFree,
                (newValue) {
              setState(() {
                isGlutenFree = newValue;
              });
            },
          ),
          mySwitchTile(
            'Lactose-free',
            'Only include lactose-free meals.',
            isLactoseFree,
                (newValue) {
              setState(() {
                isLactoseFree = newValue;
              });
            },
          ),
          mySwitchTile(
            'Vegetarian',
            'Only include vegetarian meals.',
            isVegetarian,
                (newValue) {
              setState(() {
                isVegetarian = newValue;
              });
            },
          ),
          mySwitchTile(
            'Vegan',
            'Only include vegan meals.',
            isVegan,
                (newValue) {
              setState(() {
                isVegan = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
