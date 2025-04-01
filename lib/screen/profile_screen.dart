import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "profile",
            style: GoogleFonts.dancingScript(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25,),
            CircleAvatar(
              backgroundImage: AssetImage("assets/ahmed tamer.jpg"),
              radius: 50,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 239, 207, 180),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0,3),
                  )]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 40,color: Colors.orange,),
                      SizedBox(width: 20,),
                      Text("My Account",style:  GoogleFonts.dancingScript(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),),
                     Spacer(),
                  IconButton(onPressed: (){}, icon: Icon( Icons.arrow_forward_ios),color: Colors.black,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}