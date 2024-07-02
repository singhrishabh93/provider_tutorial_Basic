import 'package:flutter/material.dart';
import 'package:provide_tutorial/home.dart';
import 'package:provide_tutorial/listProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider())
      ],
      child: const MaterialApp(
        home: Home()
      ),
    );
  }
}

