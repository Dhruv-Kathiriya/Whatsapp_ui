import 'package:flutter/material.dart';
import 'package:whatsapp_app/view/screens/homepage/homepage.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
