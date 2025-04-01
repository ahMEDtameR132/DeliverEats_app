import 'package:delivereats_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
 bool _isObscure = true;
  bool isChecked = false;

class _LoginState extends State<Login> {
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
            "Login",
            style: GoogleFonts.dancingScript(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
                    ),
          ),
        ),
      ),


      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(height: 25),
              TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), 
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child:Text("Forgot password",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),), 
                  )
                ],
              ),
                SizedBox(height: 40,),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
           backgroundColor: const Color.fromARGB(255, 240, 142, 6), 
           foregroundColor: const Color.fromARGB(255, 249, 248, 247), 
           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
           shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10),
           ),
          ),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
          },
          child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          SizedBox(height: 25,),
        
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nwe user?",style:TextStyle(
                color: const Color.fromARGB(255, 71, 70, 70),
                fontSize: 14,
              ) ,),
               Text("Create account",style:TextStyle(
                color: const Color.fromARGB(255, 18, 18, 18),
                fontSize: 15.5,
                fontWeight: FontWeight.bold
              ) ,),
            ],
          )
            ],
          ),
        ),
      ),);
  }
}