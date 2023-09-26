import 'package:flutter/material.dart';
import 'package:quizapp/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset("assets/images/logo.jpg", fit: BoxFit.cover),
            ),
            Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ))
          ],
        ));
  }
}
