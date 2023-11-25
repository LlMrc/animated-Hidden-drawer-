import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  final VoidCallback onClick;
  const MessagePage({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: IconButton(
          onPressed: onClick,
          icon: const Icon(Icons.menu),
        ),
      ),
      body: const Center(
        child: Text('Message', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
