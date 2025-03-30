import 'package:flutter/material.dart';

class CirclAvatar extends StatelessWidget {
  final List<String> images; 

  const CirclAvatar({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: images.map((image) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 50,
          ),
        );
      }).toList(),
    );
  }
}
