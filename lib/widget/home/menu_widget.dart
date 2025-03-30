import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.menu, size: 28, color: Colors.white), // أيقونة مميزة
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      onSelected: (String value) {
        if (value == 'profile') {
          Navigator.pushNamed(context, '/profile');
        } else if (value == 'settings') {
          Navigator.pushNamed(context, '/settings');
        } else if (value == 'logout') {
          // تنفيذ إجراء تسجيل الخروج
          print("تسجيل الخروج");
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          _buildMenuItem(Icons.person, "الملف الشخصي", 'profile'),
          _buildMenuItem(Icons.settings, "الإعدادات", 'settings'),
          _buildMenuItem(Icons.exit_to_app, "تسجيل الخروج", 'logout'),
        ];
      },
    );
  }

  PopupMenuItem<String> _buildMenuItem(IconData icon, String text, String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: 22),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
