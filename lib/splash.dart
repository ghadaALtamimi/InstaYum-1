import 'package:flutter/material.dart';
import 'package:instayum1/mainpages.dart';

class SplashScreen extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 1), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MainPages(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeb6d44),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/logo2.png",
            width: 100,
          ),
          //Text('welcome to IntsaYum...'),
        ]),
      ),
    );
  }
}
