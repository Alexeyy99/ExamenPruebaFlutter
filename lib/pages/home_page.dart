import 'package:contenedor/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final contadorController = Get.find<ContadorController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador de clicks hechos',
              style: TextStyle(fontSize: 25),
            ),
            Obx(
              () => Text(
                contadorController.valor.value.toString(),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          contadorController.incrementar();
        },
        child: const Icon(Icons.add),
        tooltip: 'Click para incrementar',
        splashColor: Colors.red,
      ),
    );
  }
}
