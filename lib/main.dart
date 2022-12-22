import 'package:flutter/material.dart';
import 'screens/folding_cell_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepPurple.shade900.withOpacity(0.8),
          //secondary: Colors.deepPurple.shade900.withOpacity(0.8),
        ),
        // primaryColor: Colors.deepPurple.shade900.withOpacity(0.8)
      ),
      home: 
      FoldingCellScreen(),
    );
  }
}