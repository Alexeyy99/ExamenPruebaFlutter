import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          width: 350,
          height: 400,
          child: Card(
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.transparent)),
              elevation: 25,
              shadowColor: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FadeInImage(
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      placeholder: AssetImage('assets/images/loading.gif'),
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/3b/1f/16/3b1f1633e1f842466a8727fb563554ca.jpg')),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text(
                              'Galaxia andromeda',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        const Text(
                            'Es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.')
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
