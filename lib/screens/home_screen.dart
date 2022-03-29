import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components en Flutter'),
        ),
        body: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, i) {
            return ListTile(
              title: const Text('Ruta'),
              leading: const Icon(Icons.ac_unit),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.listView1);
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
