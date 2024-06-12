import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:guia_museu/pages/intro_page.dart';


void main() {
  runApp(
     const MyApp()
    
  );
}

final theme = ThemeData(
  useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color(0xff327EF0)),
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const IntroScreen(),
      routes: {
        '/intro_page': (context) => const IntroScreen()
      
      },
    );
  }
}
