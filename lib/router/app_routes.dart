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
        screen: const ListView1Screen(),
        route: '/listView1',
        icon: Icons.library_books_rounded,
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
      screen: const CardScreen(),
    ),
    MenuOptions(
      name: 'Tarjetas con imagen',
      route: '/cartd2',
      icon: Icons.image,
      screen: const CardType2Screen(),
    ),
    MenuOptions(
      name: 'Alertas',
      route: '/alerts',
      icon: Icons.add_alert_sharp,
      screen: const AlertScreen(),
    ),
    MenuOptions(
      name: 'Animated Container',
      route: '/animatedContainer',
      icon: Icons.play_circle_outline_outlined,
      screen: const AnimateScreen(),
    ),
    MenuOptions(
      name: 'Cirle Avatar',
      route: '/circleAvatar',
      icon: Icons.account_circle,
      screen: const CircleAvatarScreen(),
    ),
    MenuOptions(
      name: 'Alerta de ruta',
      route: '/alert',
      icon: Icons.warning_amber_rounded,
      screen: const AlertRouteScreen(),
    ),
  ];

  // ?Metodo que me devuelve una lista de rutas automaticamente
  static Map<String, Widget Function(BuildContext)> geAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (context) => const HomeScreen()});

    // ?Recorro la lista de rutas
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
