import 'package:e_com/utils/job_tiles.dart';
import 'package:e_com/utils/recommedation_tiles.dart';
import 'package:flutter/material.dart';

Color backgroundcolor = Color(0xFF0A7075);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        backgroundColor: backgroundcolor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to new possiblities',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Find a job',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Colors.greenAccent,
                    ),
                    child: Icon(
                      Icons.search,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'For You',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              decoration: const BoxDecoration(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const JobTiles();
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Recently Add',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return RecommedationTiles();
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
