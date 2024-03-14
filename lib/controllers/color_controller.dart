//tiene metodos que son la logica del negocio

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ColorController extends GetxController{
  //var tasks = <Task>[].obs;
  var selectedColor = Colors.cyan[200] as Color;
  var titleAppBar = 'Colors';
  final List<Map<String, dynamic>> data = [
    {'title': 'Colors', 'color': Colors.cyan},
    {'title': 'Red', 'color': Colors.red},
    {'title': 'Yellow', 'color': Colors.yellow},
    {'title': 'Blue', 'color': Colors.blue},
  ].obs;


  void changeColor(int position) {
    
      titleAppBar = data[position]['title'];
      selectedColor = data[position]['color'];
    
  }

  void resetColor() {
    
      titleAppBar = data[0]['title'];
      selectedColor = data[0]['color'];
   
  }
}