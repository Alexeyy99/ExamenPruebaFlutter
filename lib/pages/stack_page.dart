import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Seccion de stacks'),
          leading: const Icon(Icons.menu),
          actions: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://p4.wallpaperbetter.com/wallpaper/763/122/408/deep-space-4k-wallpaper-preview.jpg'),
            ),
          ],
        ),
        body: Stack(
          children: [
            Image.network(
              'https://i.pinimg.com/originals/0b/8c/08/0b8c081b7b05dcc0aad6238856ea87d2.gif',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            const Positioned(
              bottom: 0,
              right: 10,
                child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            )),
          ],
        ));
  }
}
