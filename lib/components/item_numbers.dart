import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemNumbers extends StatelessWidget {
  const ItemNumbers({
    super.key,
    required this.image,
    required this.jpName,
    required this.enName,
    required this.audio,
  });

  final String image;
  final String jpName;
  final String enName;
  final String audio;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DC),
            child: Image.asset(image),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                jpName,
                style: const TextStyle(
                  color: Color.fromARGB(236, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
              Text(
                enName,
                style: const TextStyle(
                  color: Color.fromARGB(236, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const Spacer(flex: 2),
          IconButton(
            onPressed: () {
              final play = AudioPlayer();
              play.play(AssetSource(audio));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Color.fromARGB(224, 255, 255, 255),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
