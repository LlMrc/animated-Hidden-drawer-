import 'package:flutter/material.dart';
import 'package:masha/components/candidat.dart';
import 'package:masha/components/sliver_users.dart';

class MainScreen extends StatelessWidget {
  final VoidCallback onClick;

  const MainScreen({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading:
                  IconButton(onPressed: onClick, icon: const Icon(Icons.menu)),
              title: const Text(
                'CANDIDATS',
                style: TextStyle(letterSpacing: 2.0, color: Colors.white),
              ),
              pinned: true,
              floating: true,
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: const EdgeInsets.only(top: 70),
                  color: Colors.grey,
                  child: const SliverUsers(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 410,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 0.3,
                            offset: Offset(-1, 2))
                      ],
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.white)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Candidat(
                          assets: 'assets/leo.jpg',
                          name: 'Louis.M Leonard',
                          salary: '80/hr',
                        ),
                        Container(
                            height: 175,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            child: description(Icons.person,
                                'A passionate and creative developer who loves to build innovative and user-friendly applications.'))
                      ]),
                ),
              ),
            ),

            ///  2 candidat
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 410,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 0.3,
                            offset: Offset(-1, 2))
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Candidat(
                          assets: 'assets/lea.png',
                          name: 'Jane Chistie',
                          salary: '70/hr',
                        ),
                        Container(
                            height: 175,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            child: description(Icons.person,
                                'currently working as a senior developer at ABC Inc'))
                      ]),
                ),
              ),
            ),

            //CANDIDAT 3

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 410,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 0.3,
                            offset: Offset(-1, 2))
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Candidat(
                          assets: 'assets/le.jpg',
                          name: 'John Doe',
                          salary: '90/hr',
                        ),
                        Container(
                            height: 175,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            child: description(Icons.person,
                                'responsible for designing, developing, and maintaining the front-end and back-end of the company’s.'))
                      ]),
                ),
              ),
            ),
          ],
        ));
  }

  Widget description(IconData icon, String txt) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            const Text(
              ' Bio ',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 18, letterSpacing: 2),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            txt,
            style: const TextStyle(
                fontSize: 18, letterSpacing: 2, overflow: TextOverflow.clip),
          ),
        )
      ],
    );
  }
}
