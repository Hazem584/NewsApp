import 'package:flutter/material.dart';
import 'package:newsapp/manger/cubit.dart';
import 'package:newsapp/screens/Home_Screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) =>
      AppCubit()
        ..getNws(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }//Hazem
}//Hazem