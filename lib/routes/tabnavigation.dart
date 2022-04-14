import 'package:flutter/material.dart';
import 'package:login/screens/screens.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    required this.page,
    required this.title,
    required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomeScreen(),
          icon: const Icon(Icons.home),
          title: const Text("Home"),
        ),
/*         TabNavigationItem(
          page: ServicioHome(),
          icon: const Icon(Icons.sports_volleyball),
          title: const Text("Servicios"),
        ), */
        TabNavigationItem(
          page: ProfilePage(),
          icon: const Icon(Icons.person),
          title: const Text("Perfil"),
        ),
      ];
}
