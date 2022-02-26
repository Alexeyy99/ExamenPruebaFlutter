import 'package:contenedor/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget{
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Seccion de List View'),
      ),
      body: ListView(
        children: [
          CardWidget(
            urlImg:
                'https://s1.eestatic.com/2019/08/02/actualidad/actualidad_418469879_131481154_1706x1280.jpg',
            titulo: 'But boni',
            descripcion: 'conejo bueno de la caricatura',
          ),
          CardWidget(
              titulo: 'ojo marron',
              descripcion: 'Es un ojo marron etc.....',
              urlImg:
                  'https://cdn.pixabay.com/photo/2020/03/26/02/01/astronaut-4968983_960_720.jpg'),
          CardWidget(
              titulo: 'Caricatura',
              descripcion: 'es una caricatura',
              urlImg:
                  'http://c.files.bbci.co.uk/16C69/production/_116298239_body.jpg'),
        ],
      ),
    );
  }
}