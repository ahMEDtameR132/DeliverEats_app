import 'package:delivereats_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<Signin> {
  bool _isObscure = true;
  bool isChecked = false;


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
            "Signin",
            style: GoogleFonts.dancingScript(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
                    ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // إضافة هوامش لتحسين التصميم
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    isChecked = ! isChecked;
                  });
                }, icon: Icon(
                 isChecked ? Icons.check_circle : Icons.circle_outlined, // تغيير الأيقونة
                 color: isChecked ? const Color.fromARGB(255, 240, 142, 6) : Colors.grey, // تغيير اللون
                 size: 25,
                )),
                Text("I accept privacy policy+Terms of use",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 15,),
              SizedBox(height: 20,),
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
        child: Text("Create Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        SizedBox(height: 15,),

             Row(
              children: [
                Expanded(
                  child: Divider(
                    color: const Color.fromARGB(255, 10, 10, 10),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or continue with",
                      style: TextStyle(color: const Color.fromARGB(137, 0, 0, 0), fontSize: 16,fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: Divider(
                    color: const Color.fromARGB(255, 19, 19, 19),
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),

            SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Image.asset("assets/google.jpg")),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Image.asset("assets/apple.png")),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Image.asset("assets/feacbook.png")),
                ],
              ),
            ),
            SizedBox(height: 15,),
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
      ),
    );
  }
}
