import 'package:get/get.dart';

class CambioImagenController extends GetxController {
  @override
  void onInit() {
    super.onInit();

   
    atrasImg();

    // cambioImg();
  }

  int indexUrlImg = 0;

  int imagen = 0;

  String urlImg = '';

  List<String> imagenes = [
    './assets/images/espacio.jpg',
    './assets/images/astronauta.jpg',
    './assets/images/galaxia.jpg',
    './assets/images/humoespacial.jpg',
    './assets/images/latigo.jpg',
    './assets/images/mundo.jpg',
    './assets/images/nebulosa.jpg',
    './assets/images/planeta.jpg',
    './assets/images/sistema.jpg',
    './assets/images/explocion.jpg',
  ];

  void adelanteImg() {
    urlImg = imagenes[imagen];
    if (imagen == 9) {
      imagen = 0;
    }
    imagen++;

    update();
  }

  void atrasImg() {
    urlImg = imagenes[imagen];
    if (imagen == 0) {
      imagen = 9;
    }
    imagen--;

    update();
  }

  // void cambioImg() {
  //   if (indexUrlImg == 0) {
  //     urlImg =
  //         './assets/images/astronauta.jpg';
  //     indexUrlImg++;
  //   } else {
  //     urlImg =
  //         './assets/images/nebulosa.jpg';
  //     indexUrlImg++;
  //   }

  //   update();
  // }
}
