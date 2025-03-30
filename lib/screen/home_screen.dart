import 'package:delivereats_app/screen/login_screen.dart';
import 'package:delivereats_app/screen/profile_screen.dart';
import 'package:delivereats_app/screen/seating_screen.dart';
import 'package:delivereats_app/widget/home/list_food.dart';
import 'package:delivereats_app/widget/home/listcircleavatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 142, 6),
        title: Text(
          "DeliverEats",
          style: GoogleFonts.dancingScript(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 142, 6),
              ),
              child: Text(
                'Menu',
                style: GoogleFonts.dancingScript(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.restaurant),
              title: Text('Restaurants'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> SeatingScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.sign_language_sharp),
              title: Text('Signin'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
              },
            ),
             ListTile(
              leading: Icon(Icons.person),
              title: Text('profile'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage("assets/pexels-viniciusbenedit-1082343.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 12.5)),
          SliverToBoxAdapter(child: const Listcircleavatar()),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: const Color.fromARGB(255, 10, 10, 10),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Popular Restaurants",
                    style: GoogleFonts.dancingScript(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: const Color.fromARGB(255, 19, 19, 19),
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 12.5)),
          ListFood(),
        ],
      ),
    );
  }
}
