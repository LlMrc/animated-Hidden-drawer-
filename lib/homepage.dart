import 'dart:math';

import 'package:flutter/material.dart';
import 'package:masha/components/drawer_items.dart';
import 'package:masha/data/drawe_items.dart';
import 'package:masha/data/drawer_item.dart';
import 'package:masha/pages/explorer.dart';
import 'package:masha/pages/main_screen.dart';
import 'package:masha/pages/message.dart';
import 'package:masha/pages/profile.dart';
import 'package:masha/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool isDrawerOpen;
  DrawerItem value = DrawerItems.home;
  double val = 0;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() => setState(() {
        val = 1;
        isDrawerOpen = true;
      });

  void closeDrawer() => setState(() {
        val = 0;
        isDrawerOpen = false;
      });

  bool isDragging = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (isDrawerOpen) {
          if (!isDrawerOpen) {
            closeDrawer();
          }
        },
        child: Scaffold(
          backgroundColor: const Color(0xff17203a),
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff17203a),
                      Color.fromARGB(255, 37, 64, 145)
                    ])),
              ),
              buildDrawer(),
              buildPage()
            ],
          ),
        ));
  }

  Widget buildPage() {
    return GestureDetector(
      onHorizontalDragStart: (details) => isDragging = true,
      onHorizontalDragUpdate: (details) {
        if (!isDragging) return;
        if (details.delta.dx > 1) {
          openDrawer();
        } else if (details.delta.dx < -1) {
          closeDrawer();
        }
        isDragging = false;
      },
      onTap: closeDrawer,
      child: TweenAnimationBuilder(
        // transform: Matrix4.translationValues(xOffset, yOffset, 0)
        //   ..scale(scaleFactor),
        duration: const Duration(milliseconds: 250),
        tween: Tween<double>(begin: 0, end: val),
        builder: (_, double val, child) {
          return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..setEntry(0, 3, 200 * val)
                ..rotateY((pi / 6) * val),
              child: AbsorbPointer(
                absorbing: isDrawerOpen,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isDrawerOpen ? 10 : 0),
                  child: Container(
                      color: isDrawerOpen ? Colors.grey[400] : Colors.grey[300],
                      child: getPage()),
                ),
              ));
        },
      ),
    );
  }

  Widget buildDrawer() {
    return DrawerWidget(
      onSelectedItem: (DrawerItem value) {
        setState(() => this.value = value);
        closeDrawer();
      },
    );
  }

  Widget getPage() {
    switch (value) {
      case DrawerItems.profile:
        return ProfilePage(onClick: openDrawer);
      case DrawerItems.chat:
        return MessagePage(onClick: openDrawer);
      case DrawerItems.explorer:
        return Explorer(onClick: openDrawer);
      case DrawerItems.settings:
        return SettingsPage(onClick: openDrawer);
      case DrawerItems.home:
      default:
        return MainScreen(onClick: openDrawer);
    }
  }
}
