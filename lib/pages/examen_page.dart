import 'package:flutter/material.dart';

class ExamenPage extends StatelessWidget {
  const ExamenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examen de prueba'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://tec.mx/sites/default/files/styles/header_full/public/2018-10/portada-cambioclimatico.jpg?itok=9dZdKlpK'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200)),
                ),
              ),
              const CircleAvatar(
                  radius: 90,
                  backgroundImage: NetworkImage('https://s1.eestatic.com/2017/10/22/actualidad/actualidad_256239333_130044981_1024x576.jpg'),
              ),
              const Positioned(
                top: 275,
                child: CircleAvatar(
                  radius: 20,
                  child: Text('i'),
                  backgroundColor: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('Like', style: TextStyle(fontSize: 30),),
          const Icon(Icons.arrow_downward, size: 60,),
        ],
      ),
    );
  }
}
