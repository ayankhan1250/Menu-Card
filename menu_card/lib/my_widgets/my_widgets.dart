import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/filter_page.dart';

class MyListTile {
  MyListTile(
      {required this.text, required this.onChanged, required this.isValue});
  String text;
  bool isValue;
  TextStyle myTextStyle = const TextStyle(color: Colors.white);
  Function(bool) onChanged;
  Widget myListTile() {
    return ListTile(
      title: Text(
        text,
        style: myTextStyle,
      ),
      subtitle: Text(
        'Only include $text meals',
        style: myTextStyle,
      ),
      trailing: Switch(value: isValue, onChanged: onChanged),
    );
  }
}

Widget myText(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Text(
      text,
      style: TextStyle(
          color: Colors.redAccent[100],
          fontWeight: FontWeight.bold,
          fontSize: 22),
    ),
  );
}

Widget mySwitchTile(String title, String subtitle, bool value, Function(bool) onChanged) {
  return SwitchListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    value: value,
    onChanged: onChanged,
    activeColor: Colors.green,
  );
}

SnackBar mySnackBar(String message,) {
  return SnackBar(
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),

    backgroundColor: Colors.black,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    duration: const Duration(seconds: 3),

  );
}
Widget myDrawer({required Map<String, bool> filters}){
  return Container(
    height: Get.height*1,
    width: Get.width*0.75,
    color: const Color(0xff2b221c),
    child: Column(
      children: [
        Container(
          height: Get.height*0.25,
          color: const Color(0xff6e3200),
          child:  Center(
            child: ListTile(
              leading: Icon(Icons.fastfood,size: 30,color: Colors.redAccent[100],),
              title: Text('Cooking Up!',style: TextStyle(
                  color: Colors.redAccent[100]
              ),),
            ),
          ),
        ),
        ListTile(
          onTap:(){
            Get.back();
          },
          leading: const Icon(Icons.fastfood_outlined,color: Colors.white,),
          title:  Text('Meals'),
        ),
        ListTile(
          onTap: (){
            Get.to(() =>FilterScreen(filters: filters));
          },
          leading: const Icon(Icons.filter_alt_outlined,color: Colors.white,),
          title:  Text('Filters'),
        ),
      ],
    ),
  );
}
