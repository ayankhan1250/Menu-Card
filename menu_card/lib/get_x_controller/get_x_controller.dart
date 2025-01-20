import 'package:flutter/material.dart';
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

class ThemeController extends GetxController{
  RxBool isDark=false.obs;
  setDark(){
    isDark.value=!isDark.value;
  }
}

class BottomBarController extends GetxController{
  RxInt index=0.obs;
  setIndex(int value){
    index.value=value;
  }

}

class FavoriteController extends GetxController{

   RxBool isFavorite=false.obs;
  setFavorite(){
    isFavorite.value=!isFavorite.value;
  }
}
