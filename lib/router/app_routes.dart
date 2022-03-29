import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  // ?Nombre de las rutas de mi aplicacion
  static const String home = '/home';
  static const String listView1 = '/listView1';
  static const String listView2 = '/listView2';

  // ?Rutas de la aplicacion
  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeScreen(),
    listView1: (context) => const ListView1Screen(),
    listView2: (context) => const ListView2Screen(),
  };
  // ?Generador de rutas
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Material App'),
        ),
        body: Center(
          child: Text('No route defined for ${settings.name}'),
        ),
      ),
    );
  }
}
