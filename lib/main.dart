import 'package:delivereats_app/management/cubit.dart';
import 'package:delivereats_app/management/state.dart';
import 'package:delivereats_app/screen/Splash_Screen.dart';
import 'package:delivereats_app/screen/profile_screen.dart';
import 'package:delivereats_app/screen/seating_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DeliverEats());
}

class DeliverEats extends StatelessWidget {
  const DeliverEats({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getfoods(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<AppCubit>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: const Color.fromARGB(255, 240, 142, 6),
              scaffoldBackgroundColor: Colors.white,
              textTheme: GoogleFonts.dancingScriptTextTheme(),
              appBarTheme: const AppBarTheme(
                color: Color.fromARGB(255, 240, 142, 6),
              ),
            ),
            darkTheme: ThemeData(
              primaryColor: const Color.fromARGB(255, 240, 142, 6),
              scaffoldBackgroundColor: Colors.grey[900],
              textTheme: GoogleFonts.dancingScriptTextTheme().apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
              appBarTheme: const AppBarTheme(
                color: Color.fromARGB(255, 240, 142, 6),
              ),
            ),
            themeMode: cubit.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}