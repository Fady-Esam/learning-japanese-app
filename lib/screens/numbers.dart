import 'package:flutter/material.dart';
import '../components/item_numbers.dart';
import '../models/number.dart';
import '../data/items_numbers.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Color.fromARGB(229, 255, 255, 255),
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView(
        children: [
          for (Number n in listOfNumbers)
            ItemNumbers(
              image: n.image,
              jpName: n.jpName,
              enName: n.enName,
              audio: n.audio,
            ),
        ],
      ),
    );
  }
}
