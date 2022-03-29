import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

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
          title: const Text('ListView2'),
        ),
        body: ListView.separated(
          itemCount: games.length,
          itemBuilder: ((context, i) => ListTile(
                //leading: const Icon(Icons.ac_unit),
                title: Text(games[i]),
                trailing: const Icon(Icons.keyboard_arrow_right,
                    color: Colors.indigo),
                onTap: () => print(games[i]),
              )),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
