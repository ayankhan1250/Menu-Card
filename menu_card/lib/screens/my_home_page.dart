import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get_x_controller/get_x_controller.dart';
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
  ThemeController themeController=Get.put(ThemeController());
  BottomBarController bottomBarController=Get.put(BottomBarController());
  var bottomIndex = 0;
  final PageController pageController=PageController();
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
    print('Built');
    return Scaffold(
      drawer: myDrawer(filters: filter),
      appBar: AppBar(
        title: Text(
          bottomBarController.index.value == 0
              ? 'Categories'
              : 'Your Favorites',
          style: const TextStyle(fontWeight: FontWeight.w600,),
        ),
        actions: [
         Obx(() =>  IconButton(
             onPressed: (){
               themeController.setDark();
               widget.toggleTheme();
             },
             icon: themeController.isDark.value?Icon(Icons.light_mode):Icon(Icons.dark_mode)
         ),)
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        onTap: (index) {
          bottomBarController.setIndex(index);
          pageController.animateToPage(bottomBarController.index.value,
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceIn);
        },
        currentIndex: bottomBarController.index.value,
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
      ),),
      body: PageView(
        controller: pageController,
        onPageChanged: (index){

            bottomBarController.index.value=index;

        },
        children: [
          CategoriesScreen(favoriteFunction: favoriteFunction,filters: filter),
          FavoritesScreen(favoriteFunction: favoriteFunction,)
        ],
      ),
    );
  }
}
