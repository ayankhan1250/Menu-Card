import 'package:flutter/material.dart';

import '../model/model.dart';
import '../my_widgets/my_widgets.dart';
import 'category_page.dart';
import 'favorite_page.dart';

class MyHomePage extends StatefulWidget {
  final Map<String,bool> filters;
  final Function toggleTheme;
  const MyHomePage({super.key, required this.filters, required this.toggleTheme,});
  @override

  State<MyHomePage> createState() => _MyHomePageState();
}
List<Meals> favorites = [];
class _MyHomePageState extends State<MyHomePage> {
  var bottomIndex = 0;
  bool isDark=false;
  final PageController pageController=PageController();
  List<String> title = ["Categories", "Your Favorites"];
  final List<Meals> favorites=[];
  Map<String,bool> filter={};
  @override
  void initState() {
    super.initState();
    filter=widget.filters;
  }
  void favoriteFunction(Meals m) {
    setState(() {
      if (favorites.contains(m)) {
        favorites.remove(m);
        ScaffoldMessenger.of(context).showSnackBar(
            mySnackBar(
              'Remove from Favorite',
            )
        );
      } else {
        favorites.add(m);
        ScaffoldMessenger.of(context).showSnackBar(
            mySnackBar(
              'Added To Favorites',
            )
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(filters: filter),
      appBar: AppBar(
        title: Text(
          title[bottomIndex],
          style: const TextStyle(fontWeight: FontWeight.w600,),
        ),
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                  isDark=!isDark;
                  widget.toggleTheme();
                });
              },
              icon: isDark?Icon(Icons.light_mode):Icon(Icons.dark_mode)
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            bottomIndex = index;
            pageController.animateToPage(bottomIndex,
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceIn);
          });
        },
        currentIndex: bottomIndex,
        selectedItemColor: Colors.redAccent[100],
        unselectedItemColor: Colors.white,
        selectedFontSize: 15,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index){
          setState(() {

            bottomIndex=index;
          });
        },
        children: [
          CategoriesScreen(favoriteFunction: favoriteFunction,filters: filter),
          FavoritesScreen(favoriteFunction: favoriteFunction,)
        ],
      ),
    );
  }
}
