import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/model.dart';
import 'meals_page.dart';

class CategoriesScreen extends StatefulWidget {

  const CategoriesScreen(
      {super.key, required this.filters, required this.favoriteFunction});

  final Map<String, bool> filters;
  final Function favoriteFunction;
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: categories.length,
        itemBuilder: (ctx, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Get.to(()=>MealsScreen(
                categoryName: category.name,
                filters: widget.filters,
                favoriteFunction: widget.favoriteFunction,
              ),);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              elevation: 5,
              color: category.color,
              child: Center(
                child: Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
