import 'package:flutter/material.dart';

import 'package:flutter_thai_hotline_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Hotline());
}
class Hotline extends StatefulWidget {
  const Hotline({super.key});

  @override
  State<Hotline> createState() => _HotlineState();
}

class _HotlineState extends State<Hotline> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme
          ),
      ),
    );
  }
}