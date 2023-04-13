import 'package:flutter/material.dart';
import 'package:invitation_card_app/screens/scroll_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Invitation Card',
      initialRoute: 'scroll_screen',
      routes: {
        'scroll_screen' : ( _ ) => ScrollScreen(),
      },
    );
  }
}