import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeatingScreen extends StatefulWidget {
  const SeatingScreen({super.key});

  @override
  State<SeatingScreen> createState() => _SeatingScreenState();
}

class _SeatingScreenState extends State<SeatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 142, 6),
        title: Text("Settings",style: GoogleFonts.dancingScript(
       fontSize: 24,
       fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 0, 0, 0),
     ),) ,
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}