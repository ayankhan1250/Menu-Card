import 'package:flutter/material.dart';
import 'package:menu_card/screens/my_home_page.dart';
import 'package:get/get.dart';
import '../getX_controller/get_x_controller.dart';
import '../my_widgets/my_widgets.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.filters});
  final Map<String, bool> filters;
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  SwitchController switchController =Get.put(SwitchController());
ThemeMode themeMode=ThemeMode.system;
  void toggleTheme(){
    setState(() {
      themeMode=(themeMode==ThemeMode.dark)?ThemeMode.light:ThemeMode.dark;
    });
  }
  @override
  Widget build(BuildContext context) {
    print('Built');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(()=>MyHomePage(filters: {
              'glutenFree': switchController.isGlutenFree.value,
              'lactoseFree': switchController.isLactoseFree.value,
              'vegetarian': switchController.isVegetarian.value,
              'vegan': switchController.isVegan.value,
            },
              toggleTheme: toggleTheme,));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text('Filters'),
      ),
      body: Column(
        children: [
          Obx(() {
            return SwitchListTile(
              title: Text('Gluten-free'),
              subtitle: Text('Only include gluten-free meals.'),
              value: switchController.isGlutenFree.value,
              onChanged: (newValue) {
                switchController.setGluten(newValue);
              },
              activeColor: Colors.green,
            );
          },),
          Obx(() => mySwitchTile(
            'Lactose-free',
            'Only include lactose-free meals.',
            switchController.isLactoseFree.value,
                (newValue) {
              switchController.setLactose(newValue);
            },
          ),),
          Obx(() => mySwitchTile(
            'Vegetarian',
            'Only include vegetarian meals.',
            switchController.isVegetarian.value,
                (newValue) {
             switchController.setVegetarian(newValue);
            },
          ),),
         Obx(() =>  mySwitchTile(
           'Vegan',
           'Only include vegan meals.',
           switchController.isVegan.value,
               (newValue) {
            switchController.setVegan(newValue);
           },
         ),),
        ],
      ),
    );
  }
}
