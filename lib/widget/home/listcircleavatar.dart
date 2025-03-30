import 'package:delivereats_app/widget/home/circl.dart';
import 'package:flutter/material.dart';

class Listcircleavatar extends StatelessWidget {
  const Listcircleavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CirclAvatar(
            images: [
              "assets/pexels-viniciusbenedit-1082343.jpg",
              "assets/pizza5.jpg",
              "assets/pizza6.jpg",
              "assets/piiza8.jpg",
              "assets/pizza7.jpg",
              "assets/pizza2.jpg",
              "assets/pizza3.jpg",
              "assets/pizza4.jpg"

            ],
          );
        },
      ),
    );

  }
}