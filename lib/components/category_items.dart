import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    this.color,
    this.text, 
    required this.onTap,
  });

  final dynamic color;
  final dynamic text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 25, left: 20),
        color: color,
        height: 80,
        width: double.infinity,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            color: Color.fromARGB(225, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
