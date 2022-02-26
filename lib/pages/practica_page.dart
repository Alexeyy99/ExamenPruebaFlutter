import 'package:contenedor/controllers/practica_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PracticaPage extends StatelessWidget {
  PracticaPage({Key? key}) : super(key: key);
  final practicaController = Get.find<PracticaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Practica'),
          backgroundColor: Colors.lightBlue,
        ),
        body: GetBuilder<PracticaController>(
          builder: (practicaController) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: practicaController.color,
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: GetBuilder<PracticaController>(
          builder: (practicaController) {
            return FloatingActionButton(
                child: const Icon(Icons.play_arrow),
                onPressed: () {
                  practicaController.incrementar();
                });
          },
        ));
  }
}
