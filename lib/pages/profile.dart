import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final VoidCallback onClick;
  const ProfilePage({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          leading: IconButton(
            onPressed: onClick,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.amber[200]),
      body: const Center(
          child: Text(
        'PROFILE',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
