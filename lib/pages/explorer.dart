import 'package:flutter/material.dart';

class Explorer extends StatelessWidget {
  final VoidCallback onClick;
  const Explorer({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: onClick,
          icon: const Icon(Icons.menu),
        ),
      ),
      body: const Center(
        child: Text('Explorer', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
