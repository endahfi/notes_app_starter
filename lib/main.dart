import 'package:flutter/material.dart';
import 'package:notes_app_starter/halaman_daftar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catatan Saya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF7B69C9),
        useMaterial3: true,
      ),
      home: const HalamanDaftar(),    
      );
  }
}

