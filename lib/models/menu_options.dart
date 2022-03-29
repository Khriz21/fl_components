import 'package:flutter/widgets.dart';

class MenuOptions {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions(
      {required this.screen,
      required this.route,
      required this.icon,
      required this.name});
}
