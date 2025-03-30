import 'package:delivereats_app/screen/login_screen.dart';
import 'package:flutter/material.dart';

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
              Text("DeliverEats",style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
             Icon(Icons.local_pizza,color: Colors.black,),
            ],
          ),
          SizedBox(height: 25,),
          CircleAvatar(
            radius: 200,
            backgroundColor:const Color.fromARGB(255, 240, 142, 6) ,
            child: Image.asset("assets/images.jpg",height: 200,width: 200,),
          ),
          Text("\t\t\t\t Craving Delicious food?\n we'll Bring It to You in Now Time!",style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 20,),
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
  child: Text("Signin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
),

SizedBox(height: 12.5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an acounte?",style:TextStyle(
              color: const Color.fromARGB(255, 71, 70, 70),
              fontSize: 14,
            ) ,),
             Text("Login",style:TextStyle(
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