# menu_card

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
import 'package:get/get.dart';
class SwitchController extends GetxController {
RxBool isGlutenFree = false.obs;
RxBool isLactoseFree = false.obs;
RxBool isVegetarian = false.obs;
RxBool isVegan = false.obs;
setGluten(bool value){
isGlutenFree.value=value;
}
setLactose(bool value){
isLactoseFree.value=value;
}
setVegetarian(bool value){
isVegetarian.value=value;
}
setVegan(bool value){
isVegan.value=value;
}
}


