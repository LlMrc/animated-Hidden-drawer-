import 'package:flutter/material.dart';
import 'package:masha/data/drawe_items.dart';
import 'package:masha/data/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;
  const DrawerWidget({super.key, required this.onSelectedItem});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 200,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                  const Text(
                    'Masha Plus',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            buidDrawerWidget(context)
          ],
        ),
      ),
    );
  }

  Widget buidDrawerWidget(BuildContext context) => Column(
      children: DrawerItems.all
          .map((e) => SizedBox(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 6),
                      title: Text(
                        e.title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      leading: Icon(e.icon, color: Colors.white),
                      onTap: () => onSelectedItem(e),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        height: 1,
                        color: Colors.white24,
                      ),
                    ),
                  ],
                ),
              ))
          .toList());
}
