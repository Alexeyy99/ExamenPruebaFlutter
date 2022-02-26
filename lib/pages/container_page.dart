import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Seccion de contenedores'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://i.blogs.es/e1feab/google-fotos/450_1000.jpg'),
                  fit: BoxFit.cover),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.green,
                )
              ],
              gradient:
                  const LinearGradient(colors: [Colors.green, Colors.blue]),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(top: 30),
            height: 120,
            width: 120,
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(90),
                boxShadow: const [
                  BoxShadow(color: Colors.blue, blurRadius: 15)
                ]),
          ),
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              color: Colors.pink,
              boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  blurRadius: 15,
                )
              ],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
          )
        ],
      )),
    );
  }
}
