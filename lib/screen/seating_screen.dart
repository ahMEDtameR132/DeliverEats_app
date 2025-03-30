import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeatingScreen extends StatefulWidget {
  const SeatingScreen({super.key});

  @override
  State<SeatingScreen> createState() => _SeatingScreenState();
}

class _SeatingScreenState extends State<SeatingScreen> {
  bool darkMode = false;
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 142, 6),
        title: Text(
          "Settings",
          style: GoogleFonts.dancingScript(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 50),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                ListTile(
                  leading: const Icon(Icons.language),
                  title: Text("Language", style: GoogleFonts.dancingScript(fontSize: 20)),
                  subtitle: const Text("English"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.dark_mode),
                  title: Text("Dark Mode", style: GoogleFonts.dancingScript(fontSize: 20)),
                  trailing: Switch(
                    value: darkMode,
                    onChanged: (value) {
                      setState(() {
                        darkMode = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: Text("Notifications", style: GoogleFonts.dancingScript(fontSize: 20)),
                  trailing: Switch(
                    value: notifications,
                    onChanged: (value) {
                      setState(() {
                        notifications = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: Text("Logout", style: GoogleFonts.dancingScript(fontSize: 20)),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 240, 142, 6),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Settings saved!")),
                );
              },
              child: Text(
                "Save",
                style: GoogleFonts.dancingScript(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}