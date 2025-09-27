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
  MenuItem(
    title: 'Snackbar',
    description: 'Muestra información en un formato de snackbar.',
    icon: Icons.smart_display,
    link: '/snackbars',
  ),
  MenuItem(
    title: 'Animated',
    description: 'Muestra información en un formato de animación.',
    icon: Icons.animation,
    link: '/animated',
  ),
  MenuItem(
    title: 'On boarding',
    description: 'Muestra información en un formato de on boarding.',
    icon: Icons.card_giftcard_rounded,
    link: '/onboarding',
  ),
  MenuItem(
    title: 'ui Controls',
    description: 'Muestra información en un formato de tarjeta.',
    icon: Icons.pest_control_rodent_outlined,
    link: '/ui_controls',
  ),MenuItem(
    title: 'progress',
    description: 'Muestra información en un formato de controles de progreso',
    icon: Icons.nordic_walking,
    link: '/progress',
  ),MenuItem(
    title: 'Cambiar tema',
    description: 'Cambiar tema de la aplicación',
    icon: Icons.color_lens_outlined,
    link: '/theme-changer',
  ),
];