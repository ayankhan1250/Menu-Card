import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu_card/get_x_controller/get_x_controller.dart';
import '../model/model.dart';
import '../my_widgets/my_widgets.dart';
import 'my_home_page.dart';

class MealDetailScreen extends StatefulWidget {
  final Meals meal;
  final Function updatePage;
  final Function favoriteFunction;
   const MealDetailScreen(
      {super.key,
        required this.meal,
        required this.favoriteFunction,
        required this.updatePage,
      });

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  FavoriteController favoriteController=Get.put(FavoriteController());
  late Meals selectedMeal;
  @override
  void initState() {
    super.initState();
     selectedMeal = meals.firstWhere(
          (e) => e.uid == widget.meal.uid,
    );
    favoriteController.isFavorite.value =favorites.contains(selectedMeal);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFFFFF3E0)),
        title: Text(
          widget.meal.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Obx(() => IconButton(
              onPressed: (){
            favoriteController.setFavorite();
              if (favoriteController.isFavorite.value) {
                if (!favorites.contains(selectedMeal)) {
                  favorites.add(widget.meal);
                  ScaffoldMessenger.of(context).showSnackBar(
                      mySnackBar(
                        'Added To Favorites',
                      )
                  );
                }
              } else {
                if (favorites.contains(widget.meal)) {
                  favorites.remove(selectedMeal);
                  ScaffoldMessenger.of(context).showSnackBar(

                      mySnackBar(
                        'Removed From Favorites',
                      )
                  );
                }
              }
          },

            // onPressed: (){
            // favoriteController.setFavorite();
            // widget.favoriteFunction(selectedMeal);
            // },
              icon: favoriteController.isFavorite.value?Icon(Icons.favorite):Icon(Icons.favorite_border)),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.meal.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF7043),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widget.meal.ingredients.map((ingredient) {
                return Text(ingredient,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      fontSize: 16,
                    ));
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Steps to Make',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF7043),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widget.meal.steps.map((step) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    step,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      fontSize: 16,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
