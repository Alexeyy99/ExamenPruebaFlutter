import 'package:contenedor/controllers/menu2_controller.dart';
import 'package:contenedor/pages/card_page.dart';
import 'package:contenedor/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu2Page extends StatelessWidget {
  const Menu2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          backgroundColor: Colors.blue,
        ),
        body: GetBuilder<Menu2Controller>(
          builder: (menu2Controller) {
            if (menu2Controller.index == 0) {
              return HomePage();
            } else {
              return const CardPage();
            }
          },
        ),
        bottomNavigationBar: GetBuilder<Menu2Controller>(
          builder: (menu2Controller) {
            return BottomNavigationBar(
              currentIndex: menu2Controller.index,
              onTap: (index) {
                menu2Controller.modificarIndex(index);
              },
              elevation: 10,
              selectedItemColor: Colors.lightBlue,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_forward_ios_outlined),
                  label: 'Contador',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.image),
                  label: 'Card'
                ),
              ],
            );
          },
        ));
  }
}
