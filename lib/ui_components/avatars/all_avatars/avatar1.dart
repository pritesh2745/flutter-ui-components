import 'package:flutter/material.dart';

class Avatar1 extends StatelessWidget {
  const Avatar1({super.key, required this.size, required this.imagePath});

  final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Image Avatar',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}