import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List games = [
      'Super Mario Bros.',
      'Final Fantasy',
      'The Legend of Zelda',
      'Pokemon',
      'The Legend of Zelda: Breath of the Wild',
      'Super Mario Bros. 2',
      'Super Mario Bros. 3',
      'Super Mario World',
      'Super Mario World 2: Yoshi\'s Island',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1'),
        ),
        body: ListView(
          children: [
            ...games
                .map(
                  (game) => Card(
                    child: ListTile(
                      //leading: const Icon(Icons.ac_unit),
                      title: Text(game),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                )
                .toList()
          ],
        ));
  }
}
