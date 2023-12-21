import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

 const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Botones", 
    subTitle : 'Varios botones de Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: "Tarjetas", 
    subTitle : 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card 
  ),
  MenuItem(
    title: "Progress indicators", 
    subTitle : 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded 
  ),
  MenuItem(
    title: "Snackbars y dialogos", 
    subTitle : 'Indicadores en pantalla', 
    link: '/snackbar', 
    icon: Icons.info_outline 
  ),
  MenuItem(
    title: "Animated Container", 
    subTitle : 'Stateful widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded 
  ),
  MenuItem(
    title: "UI Controls + Tiles", 
    subTitle : 'Un serie de controles en Flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined 
  ),
];