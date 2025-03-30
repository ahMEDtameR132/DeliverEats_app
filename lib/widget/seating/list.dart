import 'package:delivereats_app/screen/opean_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsList extends StatelessWidget {
  final bool darkMode;
  final bool notifications;
  final ValueChanged<bool> onDarkModeChanged;
  final ValueChanged<bool> onNotificationsChanged;

  const SettingsList({
    super.key,
    required this.darkMode,
    required this.notifications,
    required this.onDarkModeChanged,
    required this.onNotificationsChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              onChanged: onDarkModeChanged,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: Text("Notifications", style: GoogleFonts.dancingScript(fontSize: 20)),
            trailing: Switch(
              value: notifications,
              onChanged: onNotificationsChanged,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text("Logout", style: GoogleFonts.dancingScript(fontSize: 20)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OpenScreen()));
            },
          ),
        ],
      ),
    );
  }
}