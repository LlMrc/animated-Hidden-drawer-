import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final VoidCallback onClick;
  const SettingsPage({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        leading: IconButton(
          onPressed: onClick,
          icon: const Icon(Icons.menu),
        ),
      ),
      body: const Center(
        child: Text('Settings', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
