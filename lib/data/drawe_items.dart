import 'package:flutter/material.dart';
import 'package:masha/data/drawer_item.dart';

class DrawerItems {
  static const profile = DrawerItem(title: "Profile", icon: Icons.person);
  static const home = DrawerItem(title: "Home", icon: Icons.home);
  static const explorer = DrawerItem(title: "Explorer", icon: Icons.explore);
  static const chat = DrawerItem(title: "Message", icon: Icons.chat);
  static const settings = DrawerItem(title: "Settings", icon: Icons.settings);
  static const logout = DrawerItem(title: "Logout", icon: Icons.logout);

  static final List<DrawerItem> all = [profile, home, explorer, chat, settings, logout];
}
