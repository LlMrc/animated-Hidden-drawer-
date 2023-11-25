import 'package:flutter/material.dart';

class SliverUsers extends StatelessWidget {
  const SliverUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Wrap(
            children: [
              buildCase(Icons.public, 'Subject'),
              buildCase(Icons.attach_money_sharp, 'Cost'),
              buildCase(Icons.favorite, 'Rating', color: Colors.red),
              buildCase(Icons.location_on_outlined, 'Location'),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
            width: 350,
            height: 70,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCase(icon, text, {Color color = Colors.black}) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(14)),
      padding: const EdgeInsets.all(12),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              letterSpacing: 2,
              fontWeight: FontWeight.w700),
        )
      ]),
    );
  }
}
