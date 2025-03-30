import 'package:delivereats_app/model/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listfood extends StatelessWidget {
  final Food food;
  const Listfood({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color:   const Color.fromARGB(255, 240, 142, 6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    )
                  ],
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(food.strCategoryThumb ??"assets/pizza6.jpg"),
                        radius: 40,
                      ),
                      SizedBox(width: 5,),
                      Text(food.strCategory ??"Pizza Hut",style:GoogleFonts.dancingScript(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  ) ,),
                  SizedBox(width: 6,),
                  Text(food.idCategory?? "Delicious foos",style: GoogleFonts.dancingScript(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  ),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon( Icons.arrow_forward_ios),color: Colors.black,)
                    ],
                  ),
                ),
              ),
            );
  }
}