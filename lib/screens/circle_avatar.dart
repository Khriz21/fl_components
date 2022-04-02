import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('GK'),
            ),
          )
        ],
        title: const Text('Avatars'),
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              'https://pm1.narvii.com/6658/c815ab92dcb9af01d1effb4498b5b3207a2329a6_hq.jpg'),
        ),
      ),
    );
  }
}
