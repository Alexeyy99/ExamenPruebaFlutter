import 'package:contenedor/controllers/cambio_imagen_controller.dart';
import 'package:contenedor/controllers/contador_controller.dart';
import 'package:contenedor/controllers/menu2_controller.dart';
import 'package:contenedor/pages/cambio_imagen.dart';
import 'package:contenedor/pages/card_page.dart';
import 'package:contenedor/pages/container_page.dart';
import 'package:contenedor/pages/examen_page.dart';
import 'package:contenedor/pages/home_page.dart';
import 'package:contenedor/pages/list_view_page.dart';
import 'package:contenedor/pages/menu2_page.dart';
import 'package:contenedor/pages/menu_page.dart';
import 'package:contenedor/pages/practica_page.dart';
import 'package:contenedor/pages/stack_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/practica_controller.dart';

void main() {
  Get.lazyPut(() => PracticaController());
  Get.lazyPut(() => ContadorController());
  Get.lazyPut(() => Menu2Controller());
  Get.lazyPut(()=> CambioImagenController());
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IDGS 10-1',
      initialRoute: '/cambio/imagen',
      routes: {
        '/menu': (context) => const MenuPage(),
        '/contador': (context) => HomePage(),
        '/container': (context) => const ContainerPage(),
        '/cartas': (context) => const CardPage(),
        '/stack': (context) => const StackPage(),
        '/listView': (context) => const ListViewPage(),
        '/examen': (context) => const ExamenPage(),
        '/menu2': (context) => const Menu2Page(),
        '/practica': (context) => PracticaPage(),
        '/cambio/imagen': (context) => CambioImagenPage(), 
      },
    );
  }
}
