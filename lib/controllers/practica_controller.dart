import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PracticaController extends GetxController {
  var valor = 0.obs;
  Color color = Colors.black;

  void incrementar() {
    if (color == Colors.red) {
      color == Colors.black;
    } else {
      color == Colors.red;
    }
    valor.value++;
    update();
  }
}
