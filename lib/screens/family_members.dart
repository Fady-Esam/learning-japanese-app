
import 'package:flutter/material.dart';
import '../components/item_family_members.dart';
import '../data/items_family_members.dart';
import '../models/family_members.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Color.fromARGB(229, 255, 255, 255),
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView(
        children: [
          for (Members n in listOfFamilyMembers)
          ItemFamilyMembers(image: n.image,jpName: n.jpName,enName: n.enName,audio: n.audio,),
        ],
      ),
    );
  }
}

