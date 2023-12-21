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
    link: '/', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: "Tarjetas", 
    subTitle : 'Un contenedor estilizado', 
    link: '/', 
    icon: Icons.credit_card 
  ),
];