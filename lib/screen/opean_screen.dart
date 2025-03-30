import 'package:delivereats_app/screen/login_screen.dart';
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
              Text("DeliverEats",style: GoogleFonts.dancingScript(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),),
             Icon(Icons.local_pizza,color: Colors.black,),
            ],
          ),
          SizedBox(height: 50,),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: CircleAvatar(
              radius: 100,
              backgroundColor:const Color.fromARGB(255, 240, 142, 6) ,
              backgroundImage: AssetImage("assets/pexels-sydney-troxell-223521-708587.jpg"),
            ),
          ),
          SizedBox(height: 50,),
          Text("\t\t\t\t Craving Delicious food?\n we'll Bring It to You in Now Time!",style: GoogleFonts.dancingScript(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),),
          SizedBox(height: 22,),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
         backgroundColor: const Color.fromARGB(255, 250, 251, 252), 
         foregroundColor: const Color.fromARGB(255, 16, 16, 16), 
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
         shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
    ),
  ),
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
  },
  child: Text("Signin",style: GoogleFonts.dancingScript(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),),
),

SizedBox(height: 12.5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an acounte?",style:GoogleFonts.dancingScript(
              color: const Color.fromARGB(255, 71, 70, 70),
              fontSize: 14,
            ) ,),
             Text("Login",style:GoogleFonts.dancingScript(
              color: const Color.fromARGB(255, 18, 18, 18),
              fontSize: 15.5,
              fontWeight: FontWeight.bold
            ) ,),
          ],
        )
        ],
      ),
    );
  }
}