import 'package:flutter/material.dart';
import 'home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  @override
  _SplashScreenUIState createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeUi()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.support_agent,
                color: Colors.white,
                size: 120),

            SizedBox(height: 20),

            Text(
              "THAI HOTLINE",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            CircularProgressIndicator(color: Colors.white)

          ],
        ),
      ),
    );
  }
}