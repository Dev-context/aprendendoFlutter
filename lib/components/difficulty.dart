import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  const Difficulty({
    required this.difficutLevel,
    super.key,
  });

  final int difficutLevel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (difficutLevel >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficutLevel >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficutLevel >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficutLevel >= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficutLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}
