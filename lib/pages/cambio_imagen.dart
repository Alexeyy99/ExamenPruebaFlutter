import 'package:contenedor/controllers/cambio_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPage extends StatelessWidget {
  CambioImagenPage({Key? key}) : super(key: key);
  final cambioImagen = Get.find<CambioImagenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cambio imagen'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: GetBuilder<CambioImagenController>(
            builder: (img) {
              return GestureDetector(
                // onTap: () {
                //   img.cambioImg();
                // },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        img.atrasImg();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(img.urlImg),
                      backgroundColor: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        img.atrasImg();
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 45,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
