import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String description;
  final IconData icon;
  final String link;

  MenuItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.link,
  });
}

List<MenuItem> tipoWidgets = [
  
  MenuItem(
    title: 'Button',
    description: 'Interactúa con el usuario mediante botones.',
    icon: Icons.radio_button_checked,
    link: '/buttons',
  ),
  MenuItem(
    title: 'Card',
    description: 'Muestra información en un formato de tarjeta.',
    icon: Icons.card_membership_outlined,
    link: '/cards',
  ),
  MenuItem(
    title: 'Infinite Scroll',
    description: 'Muestra información en un formato de desplazamiento infinito.',
    icon: Icons.list_alt_outlined,
    link: '/infinite_scroll',
  ),
];