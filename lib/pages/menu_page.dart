import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu de opciones'),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(children: [
        ListTile(
          onTap: () => Navigator.pushNamed(context, '/contador'),
          title: const Text('Contador'),
          subtitle: const Text('Seccion del contador'),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.lightBlue,
          ),
          leading: const Icon(
            Icons.calculate,
            color: Colors.lightBlue,
          ),
        ),
        const Divider(),
        ListTile(
          onTap: () => Navigator.pushNamed(context, '/container'),
          title: const Text('Contenedores'),
          subtitle: const Text('Seccion de contendores'),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.lightBlue,
          ),
          leading: const Icon(
            Icons.inventory,
            color: Colors.lightBlue,
          ),
        ),
        const Divider(),
        ListTile(
          onTap: () => Navigator.pushNamed(context, '/container'),
          title: const Text('Contenedores'),
          subtitle: const Text('Seccion de contendores'),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.lightBlue,
          ),
          leading: const Icon(
            Icons.inventory,
            color: Colors.lightBlue,
          ),
        ),
      ]),
    );
  }
}
