import 'package:delivereats_app/management/cubit.dart';
import 'package:delivereats_app/screen/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main (){
  runApp(DeliverEats());
}

class DeliverEats extends StatelessWidget {
  const DeliverEats({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=> Appcubite()..getfoods(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));
  }
}