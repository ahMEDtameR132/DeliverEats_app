import 'package:delivereats_app/widget/seating/list.dart';
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
          SettingsList(
            darkMode: darkMode,
            notifications: notifications,
            onDarkModeChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
            onNotificationsChanged: (value) {
              setState(() {
                notifications = value;
              });
            },
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