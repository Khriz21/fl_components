import 'package:fl_components/models/menu_options.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  // ?Nombre de las rutas de mi aplicacion
  static const String initialRoute = 'home';

  // ?Lista de rutas
  static final menuOptions = <MenuOptions>[
    // ignore: todo
    // *TODO: Borar el /home

    MenuOptions(
        screen: const HomeScreen(),
        route: 'home',
        icon: Icons.home_rounded,
        name: 'Menu de inicio'),
    MenuOptions(
        screen: const ListView1Screen(),
        route: '/listView1',
        icon: Icons.list_sharp,
        name: 'Lista de tipo 1'),
    MenuOptions(
        screen: const ListView2Screen(),
        route: '/listView2',
        icon: Icons.list_alt,
        name: 'Lista de tipo 2'),
    MenuOptions(
        name: 'Tarjetas',
        route: '/card',
        icon: Icons.credit_card,
        screen: const CardScreen()),
    MenuOptions(
        name: 'Alertas',
        route: '/alert',
        icon: Icons.warning_amber_rounded,
        screen: const AlertScreen()),
  ];

  // ?Metodo que me devuelve una lista de rutas dinámicas
  static Map<String, Widget Function(BuildContext)> geAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  /* //?Rutas de la aplicacion generadas de forma estatica
  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const HomeScreen(),
    '/listView1': (context) => const ListView1Screen(),
    '/listView2': (context) => const ListView2Screen(),
    'card': (context) => const CardScreen(),
  }; */

  // ?Generador de rutas
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => const AlertScreen(),
    );
  }
}
