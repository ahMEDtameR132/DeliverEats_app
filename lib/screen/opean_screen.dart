import 'package:delivereats_app/screen/login.dart';
import 'package:delivereats_app/screen/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<OpenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 142, 6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "DeliverEats",
                style: GoogleFonts.dancingScript(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const Icon(Icons.local_pizza, color: Colors.black),
            ],
          ),
          const SizedBox(height: 50),
          const SizedBox(
            width: double.infinity,
            height: 300,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color.fromARGB(255, 240, 142, 6),
              backgroundImage: AssetImage("assets/pexels-sydney-troxell-223521-708587.jpg"),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            "\t\t\t\t Craving Delicious food?\n we'll Bring It to You in No Time!",
            style: GoogleFonts.dancingScript(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 22),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 250, 251, 252),
              foregroundColor: const Color.fromARGB(255, 16, 16, 16),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
            },
            child: Text(
              "Signin",
              style: GoogleFonts.dancingScript(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 12.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.dancingScript(
                  color: const Color.fromARGB(255, 71, 70, 70),
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.dancingScript(
                    color: const Color.fromARGB(255, 0, 0, 0), 
                    fontSize: 15.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
