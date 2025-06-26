import 'package:flutter/material.dart';
import 'package:languages/screens/family_members.dart';
import 'package:languages/screens/numbers.dart';

import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 175, 179, 122),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Color.fromARGB(228, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            color: Colors.orange,
            text: 'Numbers',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>  const Numbers(),
              ),
            ),
          ),
          Category(
            color: Colors.green,
            text: 'Family Members',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>   const FamilyMembers(),
              ),
            ),
          ),
          Category(
            color: const Color.fromARGB(255, 185, 4, 198),
            text: 'Members',
            onTap: () {},
          ),
          Category(
            color: Colors.blue,
            text: 'Phrases',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
