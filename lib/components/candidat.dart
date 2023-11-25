import 'package:flutter/material.dart';
import 'package:masha/components/showcase.dart';

class Candidat extends StatelessWidget {
  const Candidat({
    super.key,
    required this.assets,
    required this.name,
    required this.salary,
  });
  final String assets;
  final String name;
  final String salary;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 130,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    image: AssetImage(assets),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    repeat: ImageRepeat.noRepeat)),
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 160,
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              Text(salary),
              const Showcase(
                  icon: Icons.message_sharp,
                  title: 'chat',
                  color: Colors.green),
              const Showcase(
                  icon: Icons.check_circle_outlined,
                  title: 'hire',
                  color: Colors.purple)
            ],
          )
        ],
      ),
    );
  }
}
